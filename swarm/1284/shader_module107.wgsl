struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 7>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<bool> {
    global2 = arg_0;
    global1 = array<vec4<i32>, 7>();
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-464f, -189f, -500f) + vec3<f32>(-220f, 1554f, 1475f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(889f, -2103f, 1181f)))))))));
    let var_2 = (~(~vec2<i32>(-395i, 7638i)) & global2.a.zy) << (vec2<u32>(1u, firstLeadingBit(~u_input.b)) % vec2<u32>(32u));
    return vec2<bool>(false, !global2.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = 1676f;
    global0 = _wgslsmith_mult_i32(~global2.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, arg_1.b.x, -74370i, -35448i), select(vec4<i32>(-3287i, arg_1.b.x, -2147483647i, -2147483647i), global1[_wgslsmith_index_u32(0u, 7u)], arg_1.e.x)) & (_wgslsmith_add_i32(1i, -17531i) << (_wgslsmith_mod_u32(u_input.c, global2.c) % 32u)), -29891i & -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, global2.a.x), arg_2.b)));
    global0 = 22171i;
    global2 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global2.d, 1i), firstLeadingBit(global2.a << (firstTrailingBit(arg_1.a.zyw) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(15651i, -69093i, global2.d)), ~vec3<i32>(-2147483647i, global2.d, arg_1.b.x) & select(global2.a, global2.a, vec3<bool>(true, arg_1.e.x, false)), vec3<i32>(min(global2.d, 14155i), -2147483647i, -46738i))), true, arg_0.x, 18069i);
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(abs(u_input.c), ~75716u), 4294967295u, ~(~select(arg_3.x, arg_0.x, true)), ~(~1u)), vec2<i32>(arg_1.b.x, i32(-1i) * -55872i), vec2<u32>(u_input.b, reverseBits(_wgslsmith_div_u32(_wgslsmith_div_u32(4944u, 36665u), ~arg_2.a.x))), arg_1.d, !(!select(arg_1.e, func_3(Struct_1(global2.a, arg_2.e.x, 4294967295u, arg_1.b.x), global2.a.xy), arg_2.e)));
    return vec2<u32>(~(4294967295u ^ _wgslsmith_div_u32(min(arg_3.x, 54722u), _wgslsmith_div_u32(var_1.d.x, var_1.c.x))), _wgslsmith_mult_u32(abs(24858u), min(var_1.c.x & _wgslsmith_clamp_u32(arg_1.d.x, arg_0.x, arg_0.x), u_input.a.x)));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<vec4<i32>, 7>();
    let var_0 = Struct_2(vec4<u32>(global2.c, 0u, ~arg_0.c, global2.c), -_wgslsmith_div_vec2_i32(~vec2<i32>(global2.d, 39899i) & select(vec2<i32>(-2147483647i, 7409i), vec2<i32>(-1i, 23774i), vec2<bool>(true, false)), vec2<i32>(0i, -arg_0.d)), firstLeadingBit(func_4(~u_input.e, Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c, global2.c, 0u, 4294967295u), vec4<u32>(global2.c, global2.c, 1u, 4294967295u), vec4<u32>(0u, 0u, u_input.a.x, 0u)), -vec2<i32>(global2.d, 5125i), u_input.a.yy >> (u_input.e.yx % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 25640u), u_input.e.yx), !vec2<bool>(true, global2.b)), Struct_2(~vec4<u32>(global2.c, 4294967295u, 4294967295u, 31372u), reverseBits(vec2<i32>(arg_0.d, arg_0.a.x)), countOneBits(u_input.a.yy), u_input.a.yy, func_3(arg_0, global2.a.xz)), u_input.e.xz)), u_input.e.zz, select(!select(select(vec2<bool>(arg_0.b, global2.b), vec2<bool>(true, false), vec2<bool>(true, arg_0.b)), func_3(arg_0, global2.a.xx), func_3(arg_0, vec2<i32>(arg_0.a.x, global2.a.x))), vec2<bool>(true, global2.b && true), all(vec3<bool>(any(vec2<bool>(global2.b, global2.b)), true, false))));
    global1 = array<vec4<i32>, 7>();
    let var_1 = Struct_1(-(vec3<i32>(2147483647i, ~global2.a.x, arg_0.d >> (var_0.c.x % 32u)) ^ vec3<i32>(-15108i, global2.a.x, 7103i)), true, abs(arg_0.c), var_0.b.x);
    let var_2 = arg_0;
    return -587f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -651f))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: i32, arg_3: bool) -> bool {
    let var_0 = select(select(vec2<bool>(any(select(vec2<bool>(global2.b, false), vec2<bool>(true, global2.b), false)), false), !(!(!vec2<bool>(true, arg_3))), false), vec2<bool>(true, any(select(!vec4<bool>(arg_3, global2.b, arg_3, true), select(vec4<bool>(arg_3, global2.b, true, false), vec4<bool>(true, false, arg_3, global2.b), vec4<bool>(global2.b, global2.b, false, false)), vec4<bool>(false, arg_3, false, true)))), vec2<bool>(true, any(!select(vec3<bool>(true, false, global2.b), vec3<bool>(arg_3, true, false), vec3<bool>(arg_3, false, false)))));
    let var_1 = Struct_1(~max(abs(global2.a), max(countOneBits(vec3<i32>(global2.d, arg_2, 2147483647i)), abs(vec3<i32>(arg_1, arg_2, arg_1)))), true, firstLeadingBit(_wgslsmith_add_u32(u_input.b, global2.c)), arg_1);
    let var_2 = Struct_1(vec3<i32>(arg_2, -2147483647i, _wgslsmith_mod_i32(abs(17751i), _wgslsmith_clamp_i32(~arg_2, select(-14904i, -2147483647i, false), global2.a.x ^ arg_2))), true, 56524u, firstTrailingBit(~global2.a.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1636f, 591f, false))))));
    let var_4 = Struct_1(abs(firstLeadingBit(reverseBits(vec3<i32>(var_2.d, var_1.d, var_1.a.x))) | (-var_1.a >> (vec3<u32>(1u, 4564u, 2867u) % vec3<u32>(32u)))), var_1.b, 0u, arg_2);
    return (abs(~var_4.c) | ~u_input.c) == (select(_wgslsmith_sub_u32(var_2.c, 23794u), _wgslsmith_clamp_u32(reverseBits(0u), ~38671u, ~u_input.b), arg_2 < select(var_1.d, arg_2, true)) >> (0u % 32u));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = array<vec4<i32>, 7>();
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec3_i32(global2.a, vec3<i32>(global2.a.x, -1i ^ global2.d, 2147483647i))) >> (~reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, global2.c), u_input.d)) % 32u);
    global2 = Struct_1(global2.a, func_5(~(~(~vec4<u32>(u_input.e.x, global2.c, global2.c, 15723u))), -34751i, ~(-1i), any(vec2<bool>(func_2(Struct_1(vec3<i32>(var_0, 15864i, 0i), true, u_input.d, var_0)), all(vec2<bool>(true, global2.b))))), firstTrailingBit(~max(min(global2.c, global2.c), ~4294967295u)), var_0);
    global1 = array<vec4<i32>, 7>();
    let var_1 = Struct_1(vec3<i32>(0i, _wgslsmith_div_i32(i32(-1i) * -global2.d, ~select(var_0, var_0, true)), -global2.a.x), true, func_4(~abs(vec3<u32>(71777u, 43250u, global2.c)), Struct_2(select(firstTrailingBit(vec4<u32>(37970u, 61718u, global2.c, global2.c)), vec4<u32>(u_input.b, u_input.b, global2.c, 1u), any(vec4<bool>(global2.b, true, true, true))), _wgslsmith_clamp_vec2_i32(-global2.a.zx, vec2<i32>(1i, 1i), global2.a.xx), vec2<u32>(1u, 61291u), ~abs(u_input.a.yy), select(func_3(Struct_1(vec3<i32>(var_0, 0i, -65961i), false, 0u, global2.d), vec2<i32>(global2.d, -2147483647i)), !vec2<bool>(global2.b, global2.b), false)), Struct_2(vec4<u32>(20525u, 9729u, global2.c, ~global2.c), global2.a.zy, reverseBits(vec2<u32>(u_input.a.x, 4294967295u)), abs(vec2<u32>(4294967295u, 73953u)), !func_3(Struct_1(vec3<i32>(var_0, var_0, -24727i), false, 17960u, 0i), global2.a.xy)), vec2<u32>(max(abs(4294967295u), ~0u), ~4294967295u)).x, ~(-1i ^ (i32(-1i) * -var_0)));
    return Struct_2(vec4<u32>(countOneBits(func_4(vec3<u32>(0u, global2.c, global2.c), Struct_2(vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, 1u), var_1.a.xz, vec2<u32>(global2.c, global2.c), vec2<u32>(u_input.a.x, 33679u), vec2<bool>(true, arg_0)), Struct_2(vec4<u32>(1u, var_1.c, u_input.e.x, 0u), vec2<i32>(-12663i, 2147483647i), u_input.e.xy, u_input.e.yz, vec2<bool>(false, global2.b)), u_input.a.zx).x), 1u, abs(var_1.c), _wgslsmith_add_u32(29659u, 16863u)) << (countOneBits(select(~vec4<u32>(u_input.a.x, global2.c, u_input.d, global2.c), reverseBits(vec4<u32>(global2.c, global2.c, u_input.b, u_input.d)), all(vec3<bool>(arg_0, global2.b, arg_0)))) % vec4<u32>(32u)), ~vec2<i32>(countOneBits(1i), ~(-2147483647i)), select(firstTrailingBit(vec2<u32>(var_1.c >> (87925u % 32u), func_4(vec3<u32>(5471u, var_1.c, 0u), Struct_2(vec4<u32>(global2.c, var_1.c, 11078u, 17798u), vec2<i32>(var_1.d, 1i), vec2<u32>(1u, 21361u), vec2<u32>(global2.c, global2.c), vec2<bool>(true, var_1.b)), Struct_2(vec4<u32>(u_input.a.x, 4294967295u, var_1.c, var_1.c), global2.a.zy, u_input.e.yz, u_input.a.yz, vec2<bool>(true, false)), u_input.a.yy).x)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(6394u, global2.c)), select(func_3(Struct_1(global2.a, false, u_input.a.x, var_0), vec2<i32>(var_0, 1i)), select(!vec2<bool>(global2.b, true), vec2<bool>(var_1.b, global2.b), true), vec2<bool>(true, true))), vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(global2.c, var_1.c, 0u), _wgslsmith_sub_u32(var_1.c, 0u)), _wgslsmith_add_u32(global2.c, 69220u) & max(global2.c, ~u_input.c)), vec2<bool>(!global2.b, func_2(var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a.x;
    var var_0 = func_1(false);
    var var_1 = func_1(func_2(Struct_1(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.x, -1i, global2.d), global2.a), true, ~(~global2.c), -(0i & global2.a.x))));
    var_0 = Struct_2(_wgslsmith_mod_vec4_u32(select(var_0.a, select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c.x, global2.c, var_0.c.x, 30802u), var_1.a, vec4<u32>(4294967295u, var_1.a.x, 28921u, var_1.d.x)), var_1.a, var_1.e.x), func_3(Struct_1(global2.a, true, var_1.a.x, 16477i), select(global2.a.zz, global2.a.yx, var_1.e)).x), vec4<u32>(u_input.a.x, ~(~26850u), select(~global2.c, 4294967295u, true), func_1(true).a.x)), func_1(func_1(!func_1(false).e.x).e.x).b, select(vec2<u32>(3203u, 10380u ^ global2.c), vec2<u32>(u_input.e.x, 19803u), var_0.e.x), ~abs(~var_1.c), vec2<bool>(!func_5(~vec4<u32>(48694u, 4840u, 0u, u_input.c), 2193i, _wgslsmith_sub_i32(0i, 1i), global2.b && var_1.e.x), var_0.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -473f), -376f)), var_0.b.x ^ 5588i, vec2<u32>(var_0.d.x, 0u));
}

