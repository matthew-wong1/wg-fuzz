struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec2<bool>(false, false)));

var<private> global1: i32 = 858i;

var<private> global2: array<bool, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<f32> {
    global0 = array<Struct_1, 27>();
    var var_0 = 1u;
    var_0 = abs(_wgslsmith_add_u32(countOneBits(~116635u), u_input.b.x) | 55995u);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2404f - 755f) + _wgslsmith_f_op_f32(475f * -1948f)), 1000f, _wgslsmith_f_op_f32(select(-666f, -1000f, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2405f, -1279f, -232f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, -800f, 488f)))))));
    var var_2 = firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(-u_input.a.yw), _wgslsmith_div_vec2_i32(u_input.a.wz, ~vec2<i32>(41256i, -28485i)))) <= _wgslsmith_add_i32(2147483647i, -arg_1);
    return vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), -1000f, true)))))), 413f, 743f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    let var_0 = ~vec2<u32>(abs(min(abs(38936u), max(0u, u_input.b.x))), countOneBits(1u));
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f) - -1000f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(step(arg_1.b.x, 1043f))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + 1342f);
    var var_4 = _wgslsmith_f_op_f32(-arg_1.b.x);
    return arg_1.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(375f, 299f), _wgslsmith_f_op_f32(-1000f + 128f), global2[_wgslsmith_index_u32(u_input.b.x, 11u)])), -1880f) + _wgslsmith_f_op_f32(func_4(Struct_3(0i), Struct_2(Struct_1(vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 11u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)])), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], false, true, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(25120u, 11u)], false)), u_input.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), 27u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1056f, 923f, 361f, -332f))))))));
    var var_1 = Struct_3(u_input.a.x);
    let var_2 = _wgslsmith_mult_vec3_i32(select(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, var_1.a), min(u_input.a.zz, u_input.a.wy)), var_1.a), u_input.a.yyw, select(!vec3<bool>(global2[_wgslsmith_index_u32(4421u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], false), select(vec3<bool>(global2[_wgslsmith_index_u32(76941u, 11u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(30325u, 11u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 11u)], false)), vec3<bool>(false, false, true)), true)), vec3<i32>(var_1.a, max(var_1.a, u_input.a.x) << (u_input.b.x % 32u), 26568i) >> ((select(u_input.b, ~u_input.b, !vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)])) & (_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b.x, 0u), vec3<u32>(28619u, u_input.b.x, 4294967295u)) & ~vec3<u32>(u_input.b.x, 13872u, u_input.b.x))) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, -144f, var_0)))))) + vec3<f32>(-1991f, _wgslsmith_f_op_f32(func_4(Struct_3(var_1.a), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], vec3<f32>(-760f, var_0, var_0), global0[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, var_0, var_0, 2270f))))), var_0))));
    var_1 = Struct_3(~(-33635i));
    return Struct_1(select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], select(global2[_wgslsmith_index_u32(~0u, 11u)], global2[_wgslsmith_index_u32(countOneBits(37665u), 11u)], u_input.b.x >= u_input.b.x), true), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], true, false, false))), global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u & _wgslsmith_mod_u32(1u, u_input.b.x)), 11u)]), !select(vec2<bool>(global2[_wgslsmith_index_u32(7683u, 11u)], true), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 11u)])), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(45497u, 11u)])), vec2<bool>(var_3.x > var_3.x, all(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)])))), !(!vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1900u, 16745u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), 11u)], !global2[_wgslsmith_index_u32(0u, 11u)])));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global2 = array<bool, 11>();
    var var_0 = u_input.a;
    global1 = -29139i;
    global1 = _wgslsmith_dot_vec4_i32(-u_input.a, u_input.a);
    let var_1 = func_2();
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = arg_1;
    let var_1 = arg_2.b.x;
    let var_2 = Struct_1(!(!(!select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec4<bool>(false, false, arg_2.a.b.x, arg_0.c.x), arg_2.a.a))), !select(!vec2<bool>(true, arg_0.b.x), vec2<bool>(false, false), arg_0.a.x && any(vec4<bool>(true, arg_2.c.b.x, global2[_wgslsmith_index_u32(5130u, 11u)], true))), func_1(func_2(), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.b), arg_2, abs(0u)).c.c);
    var var_3 = vec3<i32>(~abs(u_input.a.x | (43955i << (u_input.b.x % 32u))), ~(-11597i), 2147483647i);
    return ~(~(-(~(~u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(1i, u_input.a.x, 2147483647i, ~(-(~(-1728i))) ^ min(_wgslsmith_mult_i32(1i, u_input.a.x) & 1i, func_5(Struct_1(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(55469u, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_f_op_f32(sign(-147f)), func_1(Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(27283u, 11u)], false, true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], true), vec2<bool>(true, true)), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), Struct_2(Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], false, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], false)), vec3<f32>(-173f, 1360f, -554f), Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(20138u, 11u)]), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(13003u, 11u)], true))), 0u))));
    global1 = -1i & var_0.x;
    var var_1 = func_2().a;
    let var_2 = global0[_wgslsmith_index_u32(~0u | u_input.b.x, 27u)];
    var var_3 = 12180u;
    var var_4 = vec2<i32>(-_wgslsmith_add_i32(max(u_input.a.x ^ u_input.a.x, -76335i), _wgslsmith_mult_i32(31826i << (u_input.b.x % 32u), select(38131i, 1979i, var_2.b.x))), -(~0i));
    var_4 = _wgslsmith_add_vec2_i32(u_input.a.xx, vec2<i32>(1i, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1088f), _wgslsmith_f_op_f32(-578f * -670f)), vec2<f32>(-1311f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 495f) + vec2<f32>(593f, 148f)))))));
}

