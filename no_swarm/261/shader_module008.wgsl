struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, vec2<u32>(26311u, 7879u), vec4<i32>(2147483647i, -51286i, 0i, 27350i), vec2<bool>(false, true));

var<private> global1: vec3<u32>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> bool {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(max(_wgslsmith_clamp_i32(abs(global2.c.x), -117i, 1i), u_input.c.x), -reverseBits(-global0.a)), 0i, 19620i);
    return var_0.x == global0.c.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec4<i32> {
    global1 = ~(_wgslsmith_mult_vec3_u32(~max(vec3<u32>(global2.b.x, 0u, global2.b.x), vec3<u32>(global1.x, 4294967295u, arg_0.x)), vec3<u32>(47481u, 1u, arg_0.x) << (vec3<u32>(3627u, 43180u, 0u) % vec3<u32>(32u))) ^ select(_wgslsmith_sub_vec3_u32(vec3<u32>(40538u, 47570u, 40696u), select(vec3<u32>(27533u, arg_0.x, 4294967295u), vec3<u32>(36681u, arg_0.x, 1u), arg_2.zzz)), firstLeadingBit(~vec3<u32>(global1.x, 40503u, 1u)), any(vec2<bool>(true, true))));
    let var_0 = Struct_1(0i >> (arg_0.x % 32u), max(~global2.b, ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(21484u, global2.b.x), arg_0))), global0.c, vec2<bool>(func_3(select(!vec2<bool>(false, arg_1.x), vec2<bool>(true, global0.d.x), vec2<bool>(global0.d.x, global0.d.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, global1.x), vec2<u32>(0u, global0.b.x)) << (vec2<u32>(38481u, 64241u) % vec2<u32>(32u)), ~(vec3<u32>(46376u, global2.b.x, arg_0.x) & vec3<u32>(u_input.a, global1.x, global1.x))), global0.d.x));
    global2 = Struct_1(firstTrailingBit(82417i), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, global2.b.x, global1.x, 71634u), vec4<u32>(1u, global0.b.x, 44196u, global2.b.x)), global1.x | global1.x), reverseBits(min(vec2<u32>(23592u, 4294967295u), global1.xy))), var_0.b.x), _wgslsmith_clamp_vec4_i32(abs(max(var_0.c, -vec4<i32>(15180i, 0i, global0.c.x, global2.a))), firstTrailingBit(~(var_0.c >> (vec4<u32>(22198u, arg_0.x, 35593u, 19424u) % vec4<u32>(32u)))), abs(~vec4<i32>(-1i, global2.a, global0.a, -2147483647i))), vec2<bool>(func_3(vec2<bool>(true, all(vec2<bool>(true, true))), min(_wgslsmith_mod_vec2_u32(global1.xy, global0.b), ~vec2<u32>(global2.b.x, 33559u)), ~(vec3<u32>(4294967295u, 7545u, 0u) >> (vec3<u32>(7920u, global2.b.x, global2.b.x) % vec3<u32>(32u)))), true));
    global2 = var_0;
    let var_1 = -423f;
    return vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-global2.c.xwz, global0.c.xzz), firstTrailingBit(var_0.c.wzx)), ~(-_wgslsmith_mod_i32(global0.a, global0.c.x))), global2.c.x << (18758u % 32u), 1i, _wgslsmith_dot_vec3_i32(reverseBits(global0.c.xzz), select(vec3<i32>(global0.a, _wgslsmith_mod_i32(-1i, 2147483647i), u_input.c.x), vec3<i32>(1i, firstLeadingBit(u_input.d.x), i32(-1i) * -1i), arg_1.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(global0.b.x, abs(_wgslsmith_add_u32(reverseBits(_wgslsmith_sub_u32(u_input.a, 11165u)), global1.x)), u_input.a);
    let var_1 = Struct_1(-_wgslsmith_dot_vec2_i32(~(global0.c.zy >> (vec2<u32>(23216u, 23577u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_clamp_i32(0i, global0.c.x, global2.c.x), -1i)), var_0.yx, global0.c & func_2(~global0.b, select(global2.d, !vec2<bool>(global2.d.x, global0.d.x), !global0.d.x), vec4<bool>(global2.d.x, true, select(global2.d.x, global2.d.x, global0.d.x), false), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(880f, 492f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(510f, 550f)), select(vec2<bool>(false, global0.d.x), vec2<bool>(global2.d.x, true), true)))), vec2<bool>(true, true));
    let var_2 = true;
    var var_3 = _wgslsmith_clamp_vec2_i32(~var_1.c.wz | ~(-vec2<i32>(1i, global0.c.x) | vec2<i32>(1i, u_input.b)), global0.c.xw, ~vec2<i32>(~(i32(-1i) * -14852i), _wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(-60411i, var_1.c.x))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    global1 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.x, u_input.a, 40558u), vec3<u32>(7248u, 4294967295u, 0u) ^ vec3<u32>(u_input.a, 1u, global2.b.x)), vec3<u32>(~3897u, 4294967295u, ~global2.b.x)), firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2.b.x, global0.b.x, global2.b.x), max(vec3<u32>(global0.b.x, 1u, 20537u), vec3<u32>(29216u, arg_0.b.x, global0.b.x))))) >> (_wgslsmith_mult_vec3_u32(select(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(69514u, u_input.a, 92360u), vec3<u32>(u_input.a, 4294967295u, global0.b.x)), select(vec3<u32>(4294967295u, u_input.a, 29691u), vec3<u32>(10228u, 5913u, 1u), vec3<bool>(arg_0.d.x, true, arg_1.x)), countOneBits(vec3<u32>(arg_2.b.x, global0.b.x, 0u))), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(0u, 66167u, global0.b.x)), vec3<u32>(arg_2.b.x, 4294967295u, arg_0.b.x) | vec3<u32>(global2.b.x, 1106u, u_input.a), reverseBits(vec3<u32>(u_input.a, 4294967295u, global0.b.x))), vec3<bool>(true, false | global2.d.x, select(false, global2.d.x, false))), abs(countOneBits(vec3<u32>(global0.b.x, 93902u, arg_0.b.x)))) % vec3<u32>(32u));
    global0 = func_1();
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(global0.c.zy, abs(~vec2<i32>(arg_2.c.x, global2.a))), arg_2.b | abs(countOneBits(reverseBits(vec2<u32>(global1.x, 1u)))), arg_2.c, !func_1().d);
    let var_0 = func_1();
    let var_1 = select(select(vec3<bool>(true, true, true), select(arg_1.xwy, vec3<bool>(true, true, all(arg_1.ww)), true), all(arg_1.xxz)), vec3<bool>(select(true, true, false), _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(u_input.a, 1u)) != _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 41769u, arg_0.b.x), vec3<u32>(arg_2.b.x, u_input.a, global2.b.x)), vec3<u32>(arg_2.b.x, 0u, 42931u) | vec3<u32>(4294967295u, arg_0.b.x, global0.b.x)), arg_2.d.x), !(!arg_2.d.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1211f, 675f)))) * -471f))));
}

fn func_5(arg_0: f32) -> Struct_1 {
    global1 = vec3<u32>(15032u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(38252u, global0.b.x | global1.x, _wgslsmith_mult_u32(global0.b.x, global1.x) << (_wgslsmith_mult_u32(16622u, 7148u) % 32u)), min(0u, ~1922u)), u_input.a);
    global1 = ~firstLeadingBit(~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(101826u, 1u, global2.b.x)), vec3<u32>(0u, u_input.a, 4294967295u)));
    global2 = Struct_1(-global0.a, ~vec2<u32>(~1u, ~0u) & (vec2<u32>(global2.b.x, 1u) & vec2<u32>(global2.b.x, _wgslsmith_mod_u32(13226u, global0.b.x))), _wgslsmith_clamp_vec4_i32(global2.c, func_1().c, global2.c) | (_wgslsmith_div_vec4_i32(abs(vec4<i32>(-2147483647i, global0.a, global0.a, 1i)), abs(global2.c)) | vec4<i32>(global2.a, ~global0.c.x, -24404i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), u_input.d))), !(!global2.d));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -996f, arg_0) - vec3<f32>(arg_0, arg_0, -1370f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1707f) - vec3<f32>(arg_0, 1203f, 966f)), vec3<f32>(arg_0, 656f, -535f), true)))));
    global1 = (~vec3<u32>(firstLeadingBit(83393u), min(1u, 37941u), global0.b.x) << ((vec3<u32>(23017u, reverseBits(41487u), ~global0.b.x) & ~vec3<u32>(global1.x, global0.b.x, global1.x)) % vec3<u32>(32u))) ^ reverseBits(vec3<u32>(~1u, ~3052u, 1u));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-266f - 783f), _wgslsmith_f_op_f32(step(-1538f, -451f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(563f)) - _wgslsmith_f_op_f32(278f + -1302f)), min(42059u, 0u) == _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.a, global0.b.x, u_input.a), vec4<u32>(3662u, global0.b.x, 4294967295u, 1u)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(), vec4<bool>(global2.d.x, true, global0.d.x, global0.d.x), func_1())))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(532f - _wgslsmith_f_op_f32(f32(-1f) * -1119f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1050f - 480f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(545f, 323f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(728f + 1060f), -499f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)))));
    var var_2 = func_1();
    let var_3 = var_0;
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.wx)), var_1.wx, (~global2.b & ~select(vec2<u32>(0u, 41048u), var_0.b, vec2<bool>(var_0.d.x, var_2.d.x))) << (_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_3.b.x), vec2<u32>(63654u, 1u)), ~abs(vec2<u32>(u_input.a, var_3.b.x))) % vec2<u32>(32u)));
}

