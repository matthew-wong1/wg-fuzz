struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<i32>, 16>;

var<private> global3: vec4<u32>;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(-8777i, -15360i, 18692i), vec2<bool>(false, false), vec2<u32>(4294967295u, 0u), vec2<bool>(false, false));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_1(max(_wgslsmith_clamp_vec3_i32(global4.a, vec3<i32>(1i, 1i, global4.a.x), firstTrailingBit(u_input.a.yxw)) | global4.a, vec3<i32>(~arg_0.x, -(~(-2147483647i)), select(u_input.a.x, min(u_input.a.x, arg_0.x), any(vec3<bool>(true, global1.x, global4.b.x))))), select(vec2<bool>(true, any(!vec3<bool>(global4.d.x, false, false))), global1.yz, !select(select(vec2<bool>(false, global4.b.x), global4.b, global1.x), global1.zx, any(vec2<bool>(global1.x, true)))), max(~vec2<u32>(firstTrailingBit(global4.c.x), 28990u & global4.c.x), vec2<u32>(1u ^ _wgslsmith_clamp_u32(global4.c.x, global3.x, 62171u), 1664u)), vec2<bool>(true, global4.b.x));
    let var_1 = u_input.a.x;
    global4 = Struct_1(var_0.a << ((_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.c.x, 0u, 10425u), ~vec3<u32>(var_0.c.x, var_0.c.x, global3.x)) | vec3<u32>(var_0.c.x, global4.c.x, ~global3.x)) % vec3<u32>(32u)), !select(vec2<bool>(global4.b.x, global4.b.x), vec2<bool>(true, var_0.b.x), var_0.b.x), vec2<u32>(~4294967295u, ~4294967295u | global4.c.x), select(select(vec2<bool>(var_0.d.x, global1.x), select(global4.b, select(vec2<bool>(true, true), global1.yx, global4.d.x), false), global1.zx), vec2<bool>(select(true, true, 32474i < arg_0.x), (global3.x >= 4294967295u) | !var_0.b.x), vec2<bool>((var_0.b.x & var_0.d.x) | any(vec3<bool>(false, false, true)), true)));
    global1 = vec3<bool>(false, (_wgslsmith_mult_i32(_wgslsmith_div_i32(var_1, -2147483647i), var_1) != -_wgslsmith_div_i32(1i, -2147483647i)) != true, !all(!vec3<bool>(true, global4.b.x, global4.b.x)) | any(select(select(global1.yz, vec2<bool>(global1.x, false), vec2<bool>(true, true)), !vec2<bool>(false, var_0.b.x), vec2<bool>(true, false))));
    global4 = var_0;
    return vec3<i32>(-1645i, global4.a.x, _wgslsmith_dot_vec2_i32(global4.a.xz ^ vec2<i32>(_wgslsmith_div_i32(arg_1, arg_1), ~20159i), _wgslsmith_mult_vec2_i32(firstLeadingBit(~vec2<i32>(-1i, var_0.a.x)), vec2<i32>(global4.a.x, var_0.a.x))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = -7978i;
    let var_1 = 1i;
    let var_2 = arg_1;
    var var_3 = Struct_1(func_3(firstLeadingBit(-(~u_input.a.yzx)), var_1), vec2<bool>(any(select(vec4<bool>(false, true, false, true), !vec4<bool>(global4.b.x, global1.x, true, false), select(vec4<bool>(var_2.b.x, arg_1.b.x, false, arg_1.b.x), vec4<bool>(false, false, global1.x, global1.x), global1.x))), arg_1.d.x), global4.c, global4.d);
    var var_4 = ~45174u;
    return Struct_1(arg_1.a, vec2<bool>(false, all(vec3<bool>(var_2.d.x & arg_1.d.x, all(vec3<bool>(global4.d.x, global1.x, true)), !var_2.d.x))), vec2<u32>((arg_1.c.x >> (abs(var_3.c.x) % 32u)) & ~abs(4294967295u), ~abs(_wgslsmith_sub_u32(global4.c.x, 76007u))), select(vec2<bool>(true, all(select(vec2<bool>(var_3.b.x, arg_1.d.x), vec2<bool>(arg_1.b.x, var_3.d.x), vec2<bool>(arg_1.b.x, true)))), select(var_2.d, !vec2<bool>(false, global4.b.x), select(vec2<bool>(global1.x, global1.x), select(global4.d, global4.b, arg_1.d.x), !vec2<bool>(global1.x, arg_1.b.x))), vec2<bool>(true, global1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    let var_0 = -980f;
    let var_1 = arg_0;
    global1 = !(!select(vec3<bool>(all(global4.b), select(true, true, var_1.d.x), global1.x), vec3<bool>(true, all(vec4<bool>(true, arg_1, global4.d.x, global4.d.x)), any(vec4<bool>(false, true, true, false))), vec3<bool>(global1.x | var_1.b.x, true, any(vec3<bool>(global4.d.x, var_1.d.x, global1.x)))));
    return select(vec4<bool>(!func_2(2147483647i, var_1, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1162f, -553f, var_0)))).d.x, arg_1, false, any(vec4<bool>(!global4.d.x, false, !global1.x, true))), vec4<bool>(func_2(-54908i, func_2(-8638i, var_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 100f, 407f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 748f, var_0, var_0))))).b.x, global4.b.x, true, !global4.b.x), select(vec4<bool>(global4.d.x, select(all(vec4<bool>(arg_1, true, global1.x, global1.x)), arg_0.b.x, global4.c.x != arg_0.c.x), true, true), vec4<bool>(var_1.b.x, _wgslsmith_div_u32(global4.c.x, 0u) > 836u, true, countOneBits(global3.x) < 0u), !any(vec3<bool>(false, global4.b.x, false))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    var var_0 = func_4(func_2(_wgslsmith_dot_vec4_i32(~(global2[_wgslsmith_index_u32(17976u, 16u)] << (vec4<u32>(1u, 67108u, 4294967295u, global4.c.x) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(arg_1.c.x, 16u)]), arg_1, vec4<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3)) - _wgslsmith_f_op_f32(f32(-1f) * -184f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(475f + arg_3) * arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * arg_3))), !arg_2.b.x);
    var var_1 = vec3<u32>(4294967295u, 6177u >> (firstTrailingBit(36787u) % 32u), 1u);
    global3 = _wgslsmith_mod_vec4_u32((min(vec4<u32>(arg_2.c.x, 0u, arg_2.c.x, 94869u) << (vec4<u32>(0u, var_1.x, var_1.x, arg_2.c.x) % vec4<u32>(32u)), vec4<u32>(18226u, arg_2.c.x, global4.c.x, global3.x)) & vec4<u32>(~global4.c.x, func_2(14534i, arg_2, vec4<f32>(arg_3, arg_3, arg_3, arg_3)).c.x, ~arg_2.c.x, reverseBits(9188u))) | vec4<u32>(_wgslsmith_sub_u32(1u, abs(var_1.x)), arg_2.c.x, ~arg_1.c.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(global3.x, var_1.x, 1u), max(21449u, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.c.x, 7746u, 0u, arg_2.c.x) ^ vec4<u32>(4294967295u, arg_2.c.x, arg_2.c.x, global3.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(11186u, var_1.x, 31787u, 1u), vec4<u32>(11911u, 53275u, 4294967295u, 81514u))) ^ ~min(vec4<u32>(arg_1.c.x, var_1.x, var_1.x, 4294967295u) << (vec4<u32>(44616u, arg_2.c.x, arg_2.c.x, 24429u) % vec4<u32>(32u)), ~vec4<u32>(1u, 1u, arg_2.c.x, var_1.x)));
    var var_2 = _wgslsmith_add_vec2_i32(-max(~vec2<i32>(arg_0, -1i), arg_1.a.zx), -u_input.a.xw);
    let var_3 = select(vec4<bool>(false, true, var_0.x, var_0.x && func_2(2147483647i, arg_2, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-447f, 1313f, arg_3, arg_3)))).b.x), !vec4<bool>(!(var_0.x | false), true || !arg_2.d.x, true, arg_2.d.x), func_4(arg_2, func_4(func_2(-arg_2.a.x, func_2(-38224i, Struct_1(arg_2.a, vec2<bool>(true, false), arg_2.c, var_0.wz), vec4<f32>(-2315f, arg_3, arg_3, arg_3)), vec4<f32>(-398f, arg_3, arg_3, arg_3)), !func_2(43399i, Struct_1(vec3<i32>(global4.a.x, -29486i, arg_1.a.x), vec2<bool>(false, false), vec2<u32>(arg_1.c.x, arg_1.c.x), arg_1.b), vec4<f32>(-1686f, -838f, -341f, -906f)).b.x).x).x);
    return func_2(reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(-1i) * -vec2<i32>(arg_0, u_input.a.x))), Struct_1(func_3(arg_2.a ^ func_2(39051i, arg_1, vec4<f32>(arg_3, -1162f, arg_3, arg_3)).a, 2147483647i), select(global1.xy, var_0.zy, !(!var_0.x)), select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.c.x, global3.x), vec2<u32>(5539u, arg_1.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(41145u, 4294967295u, 1u, 68028u), vec4<u32>(1250u, arg_2.c.x, 27637u, var_1.x))), vec2<u32>(_wgslsmith_add_u32(arg_1.c.x, 1419u), arg_1.c.x ^ arg_2.c.x), vec2<bool>(true, true)), !(!(!arg_2.b))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1037f + -329f)) + -948f), -850f, 849f, 272f)).d;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    global2 = array<vec4<i32>, 16>();
    var var_0 = select(~func_2(-53684i, func_2(0i, arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_1)), arg_1, _wgslsmith_f_op_f32(abs(arg_1)), 243f)).c, func_2(_wgslsmith_div_i32(arg_2.a.x, -max(global4.a.x, -2147483647i)), func_2(_wgslsmith_dot_vec4_i32(countOneBits(global2[_wgslsmith_index_u32(global3.x, 16u)]), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(arg_2.a.x, arg_0.a.x, u_input.a.x, arg_2.a.x))), func_2(~(-1i), Struct_1(global4.a, arg_0.d, global4.c, vec2<bool>(arg_0.d.x, arg_2.d.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, 294f, arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, arg_1, -1221f, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) + vec4<f32>(1860f, arg_1, -357f, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 1145f))))).c, !(!select(!vec2<bool>(arg_0.b.x, global1.x), vec2<bool>(false, global1.x), false)));
    global3 = ~firstLeadingBit(vec4<u32>(0u, 4294967295u, _wgslsmith_add_u32(114627u, global4.c.x) | arg_2.c.x, abs(_wgslsmith_mult_u32(1u, 0u))));
    var var_1 = _wgslsmith_f_op_f32(floor(arg_1));
    global4 = Struct_1(_wgslsmith_add_vec3_i32(func_3(u_input.a.xxw, _wgslsmith_div_i32(~(-1i), _wgslsmith_mod_i32(1i, u_input.a.x))), vec3<i32>(-4669i ^ -arg_0.a.x, -(u_input.a.x ^ 1i), abs(-23237i))), vec2<bool>(all(!global1.yx), global4.d.x), global3.yx, !select(func_2(-u_input.a.x, func_2(global4.a.x, arg_2, vec4<f32>(arg_1, arg_1, -534f, arg_1)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, -171f, 1008f, -1000f)))).d, select(!global1.yz, global4.d, !vec2<bool>(global1.x, true)), arg_0.b.x));
    return vec4<u32>(select(~_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(40796u, 1u)), arg_2.c.x, true), 1u, select(~(~arg_0.c.x & arg_2.c.x), arg_2.c.x, false), 39162u | _wgslsmith_sub_u32(global4.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.c, vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, global4.c.x)), arg_0.c << (vec2<u32>(arg_2.c.x, 4294967295u) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~vec4<u32>(~global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 58779u, 21630u), vec4<u32>(1u, global3.x, global3.x, 30328u)), firstLeadingBit(global4.c.x), global4.c.x) | func_5(Struct_1(firstLeadingBit(global4.a), vec2<bool>(true, false), select(global3.xx, vec2<u32>(global3.x, global4.c.x), global1.yy), func_1(-2147483647i, Struct_1(global4.a, vec2<bool>(true, global4.b.x), global4.c, global4.b), Struct_1(vec3<i32>(-36727i, 1i, global4.a.x), global4.b, global3.wy, vec2<bool>(false, global1.x)), 1457f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-471f))), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, global4.a.x), vec2<bool>(global4.b.x, true), reverseBits(vec2<u32>(global3.x, 4294967295u)), !global1.xz)));
    let var_0 = func_2(_wgslsmith_mod_i32(-8195i, ~global4.a.x), func_2(-1i, Struct_1(u_input.a.yyx, func_1(abs(u_input.a.x), func_2(1i, Struct_1(vec3<i32>(0i, -13621i, 2147483647i), global1.yz, global3.xy, vec2<bool>(false, global4.d.x)), vec4<f32>(1198f, 2385f, 383f, 655f)), func_2(global4.a.x, Struct_1(vec3<i32>(global4.a.x, global4.a.x, 77031i), global1.zx, vec2<u32>(9295u, global4.c.x), vec2<bool>(global1.x, true)), vec4<f32>(-663f, 662f, -1000f, -363f)), -963f), ~global3.ww ^ ~global4.c, vec2<bool>(true, all(global1.xz))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1935f, 950f, 2714f, -1640f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1085f, -680f) + _wgslsmith_f_op_f32(457f - 270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2836f)), 1390f, _wgslsmith_f_op_f32(-708f - _wgslsmith_f_op_f32(-288f - 1000f))) - vec4<f32>(-132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1262f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1939f, -193f)), 1f)));
    var var_1 = ~vec3<u32>(1u, global4.c.x, global4.c.x);
    let var_2 = Struct_1(abs(u_input.a.ywz), vec2<bool>(any(!vec3<bool>(global1.x, var_0.b.x, false)), !global4.b.x), vec2<u32>(abs(41434u & ~var_1.x), 1u), var_0.b);
    var var_3 = func_2(global4.a.x, var_0, _wgslsmith_div_vec4_f32(vec4<f32>(-1780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-253f))), _wgslsmith_f_op_f32(-1918f - -795f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(912f - -309f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(279f, -726f, -552f, -458f), vec4<f32>(1462f, 1419f, -1386f, -1575f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(564f, 375f, 761f, -1373f))))));
    let var_4 = vec4<bool>(var_0.b.x, func_4(var_2, _wgslsmith_add_u32(reverseBits(var_1.x), global4.c.x) == global3.x).x, func_1(max(-13696i, _wgslsmith_div_i32(33751i, 81070i)), var_2, Struct_1(max(-vec3<i32>(global4.a.x, var_0.a.x, var_3.a.x), -var_3.a), func_2(u_input.a.x, var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-956f, -1000f, -860f, 593f))).b, _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_2.c.x, 0u), ~var_3.c, ~var_1.xy), select(vec2<bool>(true, true), vec2<bool>(var_3.d.x, var_3.b.x), vec2<bool>(false, var_0.b.x))), _wgslsmith_f_op_f32(1f * -330f)).x, false);
    var var_5 = func_2(firstLeadingBit(select(~0i, _wgslsmith_clamp_i32(~u_input.a.x, var_0.a.x, var_3.a.x), !var_2.d.x)), Struct_1(vec3<i32>(30634i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(-20945i, var_0.a.x), var_0.a.x | 10825i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1255i, var_0.a.x, 0i), vec3<i32>(global4.a.x, 41922i, global4.a.x))), vec2<bool>(false, true), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_3.c.x, global3.x), 21100u), ~(~vec2<u32>(12849u, 4294967295u))), !global1.xy), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1412f + -881f))), _wgslsmith_f_op_f32(2311f - -687f), -632f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -703f) * _wgslsmith_f_op_f32(-464f * 891f))));
    var_1 = ~vec3<u32>(1u, ~1u, countOneBits(var_5.c.x));
    let var_6 = ~(-12693i);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(var_5.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(214f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(141f))))) - 1621f), -1000f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1631f)))), 1594f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + -444f), 368f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1963f, -434f, 1711f, 2087f) + vec4<f32>(1245f, -502f, -1173f, 312f))) - vec4<f32>(-583f, _wgslsmith_f_op_f32(146f - -1000f), _wgslsmith_f_op_f32(min(-661f, 273f)), _wgslsmith_div_f32(-940f, 1019f))), var_0.d.x)), vec2<u32>(_wgslsmith_div_u32(var_0.c.x, var_5.c.x) | var_3.c.x, _wgslsmith_sub_u32(abs(var_2.c.x), ~3064u)) ^ _wgslsmith_mult_vec2_u32(var_5.c, global3.yz));
}

