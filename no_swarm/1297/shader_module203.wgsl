struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(15575i, 45621i, -18536i, i32(-2147483648)), vec4<i32>(22650i, -1i, -1i, -24807i), vec4<i32>(-1i, -28955i, 14887i, 20881i), vec4<i32>(1i, 0i, i32(-2147483648), 18474i), vec4<i32>(-30853i, 31110i, 1747i, -13057i), vec4<i32>(-1i, -13896i, 16716i, -78645i), vec4<i32>(-44761i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-25821i, -1i, -18642i, -7899i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(-39943i, -26354i, -23249i, 2147483647i), vec4<i32>(8573i, -7135i, -1i, 34653i));

var<private> global1: Struct_2 = Struct_2(72758u, vec2<i32>(1i, 1i), vec2<f32>(434f, 138f), -1836f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = true;
    let var_1 = Struct_2(23859u, -u_input.a.ww, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, 160f))) * global1.c) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c + global1.c), _wgslsmith_f_op_vec2_f32(exp2(global1.c))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c.x))))))));
    let var_2 = _wgslsmith_div_i32(u_input.a.x, -57911i);
    let var_3 = _wgslsmith_dot_vec4_i32((_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_1.b.x, global1.b.x), u_input.a) | global0[_wgslsmith_index_u32(global1.a & 29596u, 11u)]) ^ global0[_wgslsmith_index_u32(max(0u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(59486u, var_1.a, 1u, 52540u), vec4<u32>(64566u, global1.a, 30293u, u_input.c.x), var_0), vec4<u32>(101855u, u_input.c.x, global1.a, global1.a))), 11u)], ~vec4<i32>(_wgslsmith_dot_vec2_i32(global1.b, global1.b), var_1.b.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-28919i, var_2, -19936i), u_input.a.wyy), u_input.a.x, max(-33089i, abs(-2147483647i))));
    let var_4 = global0[_wgslsmith_index_u32(countOneBits(u_input.b), 11u)];
    return 1u;
}

fn func_2(arg_0: vec2<bool>) -> vec2<f32> {
    var var_0 = true;
    var var_1 = 1436f;
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(global1.a, 1771u), ~20255u) % 32u), ~_wgslsmith_mult_u32(1u, func_3(1i))), vec2<u32>(8315u, u_input.c.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1474f)))) + global1.c.x);
    let var_4 = countOneBits(vec4<u32>(_wgslsmith_add_u32(countOneBits(~23883u), 0u), _wgslsmith_div_u32(30854u, ~(~u_input.c.x)), min(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c) << (~4294967295u % 32u), u_input.c.x), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(var_2, 1u), ~(~var_2))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.c * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, global1.d), vec2<f32>(global1.c.x, var_3)) + _wgslsmith_div_vec2_f32(global1.c, global1.c))))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = arg_0;
    global1 = Struct_2(~_wgslsmith_div_u32(global1.a, arg_0.a), -_wgslsmith_div_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(-62352i, -1i), u_input.a.zw)), vec2<i32>(~1i, ~global1.b.x)), vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(1715f * _wgslsmith_div_f32(global1.d, global1.c.x))), _wgslsmith_f_op_f32(-arg_0.d));
    let var_0 = -global0[_wgslsmith_index_u32(u_input.c.x, 11u)] ^ vec4<i32>(~_wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(-17433i, -1i, arg_0.b.x, u_input.a.x)), 2147483647i, -32097i, arg_0.b.x);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * 127f) * 591f) - global1.c.x)), arg_0);
    global0 = array<vec4<i32>, 11>();
    return var_1.b;
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<i32>, 11>();
    global0 = array<vec4<i32>, 11>();
    global1 = func_4(Struct_2(_wgslsmith_div_u32(~u_input.c.x, 0u), firstLeadingBit(vec2<i32>(56270i, 20954i)), _wgslsmith_f_op_vec2_f32(func_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(767f, 1290f) - _wgslsmith_div_f32(1430f, -175f)))));
    var var_0 = Struct_2(_wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.a, 1u, global1.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a, u_input.b, u_input.c.x), vec3<u32>(u_input.b, u_input.c.x, 1u), vec3<u32>(u_input.c.x, global1.a, 381u)))), select(u_input.a.ww, vec2<i32>(~reverseBits(global1.b.x), -53342i), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(abs(1000f))), global1.c) + _wgslsmith_f_op_vec2_f32(min(global1.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c + global1.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(266f, -824f) * vec2<f32>(global1.d, global1.d)))))), _wgslsmith_f_op_f32(max(-1839f, _wgslsmith_f_op_f32(global1.d * global1.d))));
    var var_1 = var_0.c.x > _wgslsmith_f_op_f32(-121f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.d))))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), Struct_2(global1.a, global1.b, vec2<f32>(var_0.d, 170f), global1.d));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> bool {
    let var_0 = Struct_2((_wgslsmith_sub_u32(40022u & arg_0.b.a, arg_2.b.a) | u_input.c.x) ^ (_wgslsmith_add_u32(firstLeadingBit(arg_0.b.a), u_input.b) | 1u), u_input.a.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-2677f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-503f)), 814f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + global1.d))));
    var var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(50141u, 1u), select(abs(firstTrailingBit(u_input.c)) & ((u_input.c << (vec2<u32>(0u, global1.a) % vec2<u32>(32u))) >> (u_input.c % vec2<u32>(32u))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.b), u_input.c), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true), all(vec4<bool>(false, false, true, false))))));
    let var_2 = var_0.a;
    let var_3 = 20509i;
    var var_4 = -u_input.a.x;
    return (((func_1().b.b.x ^ u_input.a.x) > var_3) || (true && (_wgslsmith_f_op_f32(-global1.d) >= _wgslsmith_f_op_f32(global1.c.x - global1.c.x)))) & true;
}

fn func_6(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = global1.b;
    var_0 = vec2<i32>(~(-select(~u_input.a.x, u_input.a.x, select(arg_0.x, arg_0.x, arg_0.x))), global1.b.x);
    var var_1 = -u_input.a.xx;
    let var_2 = func_1();
    let var_3 = var_2;
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!any(vec2<bool>(true, true))) || all(vec4<bool>(true, true, true, true));
    var_0 = !(!(!(false && any(vec2<bool>(false, false)))));
    var_0 = !(u_input.a.x == u_input.a.x);
    let var_1 = func_6(vec3<bool>((_wgslsmith_f_op_f32(-global1.d) <= 1351f) & all(vec2<bool>(true, true)), select(u_input.b == 32239u, true, true) && (u_input.b >= _wgslsmith_div_u32(4294967295u, u_input.c.x)), func_5(func_1(), i32(-1i) * -2091i, Struct_3(global1.c.x, Struct_2(1u, u_input.a.zw, global1.c, 2314f)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_clamp_vec2_u32(abs(u_input.c), u_input.c, countOneBits(~(u_input.c | vec2<u32>(1u, 27009u)))));
    let var_3 = firstTrailingBit(~1i);
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~u_input.b);
}

