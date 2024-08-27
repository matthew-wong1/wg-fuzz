struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(331f, vec2<bool>(false, true), false, vec2<u32>(0u, 40941u)), Struct_1(685f, vec2<bool>(false, false), true, vec2<u32>(1u, 150740u)), Struct_1(1327f, vec2<bool>(false, true), true, vec2<u32>(18863u, 4294967295u)), Struct_1(-335f, vec2<bool>(true, true), false, vec2<u32>(37861u, 1u)), Struct_1(230f, vec2<bool>(false, false), true, vec2<u32>(40562u, 4294967295u)), Struct_1(-1095f, vec2<bool>(false, false), false, vec2<u32>(38984u, 0u)), Struct_1(1433f, vec2<bool>(false, false), false, vec2<u32>(1u, 66077u)), Struct_1(-501f, vec2<bool>(false, true), true, vec2<u32>(64190u, 28863u)), Struct_1(1458f, vec2<bool>(false, false), true, vec2<u32>(28418u, 6781u)), Struct_1(1246f, vec2<bool>(true, false), false, vec2<u32>(48800u, 34958u)), Struct_1(608f, vec2<bool>(false, false), false, vec2<u32>(0u, 35833u)), Struct_1(-1111f, vec2<bool>(true, true), false, vec2<u32>(22111u, 90677u)), Struct_1(-207f, vec2<bool>(true, true), true, vec2<u32>(307u, 0u)), Struct_1(-792f, vec2<bool>(true, true), true, vec2<u32>(0u, 4294967295u)), Struct_1(269f, vec2<bool>(false, false), true, vec2<u32>(21999u, 28739u)), Struct_1(1152f, vec2<bool>(true, false), true, vec2<u32>(1u, 4294967295u)), Struct_1(143f, vec2<bool>(true, false), false, vec2<u32>(29590u, 82154u)), Struct_1(1140f, vec2<bool>(true, true), true, vec2<u32>(4294967295u, 1u)), Struct_1(1467f, vec2<bool>(true, true), false, vec2<u32>(4294967295u, 4294967295u)), Struct_1(376f, vec2<bool>(true, true), true, vec2<u32>(56520u, 13253u)), Struct_1(-373f, vec2<bool>(true, false), false, vec2<u32>(1545u, 7462u)), Struct_1(-510f, vec2<bool>(true, true), true, vec2<u32>(0u, 4294967295u)), Struct_1(135f, vec2<bool>(false, true), true, vec2<u32>(15360u, 30775u)), Struct_1(1249f, vec2<bool>(true, false), false, vec2<u32>(12710u, 1u)), Struct_1(-128f, vec2<bool>(true, true), false, vec2<u32>(39898u, 18364u)), Struct_1(-1942f, vec2<bool>(true, false), true, vec2<u32>(4294967295u, 40006u)), Struct_1(-1000f, vec2<bool>(true, true), true, vec2<u32>(54892u, 16681u)));

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(737f, 564f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = select(~reverseBits(reverseBits(firstTrailingBit(vec3<u32>(8680u, arg_0.d.x, 58826u)))), _wgslsmith_mult_vec3_u32((_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d.x, arg_0.d.x, 64386u), vec3<u32>(14509u, 44241u, arg_0.d.x)) | _wgslsmith_div_vec3_u32(vec3<u32>(32163u, u_input.a, arg_0.d.x), vec3<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(66416u, u_input.a, 4294967295u), vec3<u32>(42380u, 0u, u_input.a), max(vec3<u32>(arg_0.d.x, 4294967295u, 29731u), vec3<u32>(47557u, 12328u, 0u))) % vec3<u32>(32u)), vec3<u32>(~u_input.a << (~u_input.a % 32u), 1u, 10949u)), arg_0.c);
    global0 = array<Struct_1, 27>();
    let var_1 = select(arg_0.b, !arg_0.b, select(false, any(arg_0.b), !all(vec2<bool>(arg_0.b.x, arg_0.b.x))));
    var var_2 = Struct_1(arg_0.a, select(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.b.x), select(vec2<bool>(arg_0.c, arg_0.c), arg_0.b, arg_0.b), !arg_0.c), all(vec2<bool>(arg_0.b.x, false))), vec2<bool>(all(select(var_1, vec2<bool>(false, arg_0.c), vec2<bool>(var_1.x, true))), var_1.x | true), var_1), !any(vec3<bool>(true, true, arg_0.b.x)), ~(~arg_0.d));
    var var_3 = select(select(vec4<bool>(!all(vec2<bool>(true, false)), false, false, all(vec4<bool>(var_1.x, false, arg_0.b.x, var_2.b.x))), select(vec4<bool>(true, true, !var_2.c, true), vec4<bool>(true, var_2.c, any(var_1), any(arg_0.b)), !select(vec4<bool>(false, var_2.c, true, var_1.x), vec4<bool>(false, var_1.x, arg_0.b.x, arg_0.c), true)), any(select(vec3<bool>(var_1.x, var_2.c, var_2.c), vec3<bool>(var_2.b.x, var_1.x, var_1.x), vec3<bool>(arg_0.b.x, false, var_1.x))) & all(select(vec4<bool>(false, false, false, var_2.c), vec4<bool>(var_2.b.x, true, var_1.x, var_1.x), false))), vec4<bool>(!(true == (1u < var_2.d.x)), var_2.b.x, var_1.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(32515i, 14223i, 0i), vec3<i32>(2147483647i, 25070i, 1i)) != 1i), true);
    return _wgslsmith_mod_i32(-_wgslsmith_add_i32(-19026i, 1i), -1i);
}

fn func_2() -> bool {
    let var_0 = Struct_2(1000f, -1578f, global0[_wgslsmith_index_u32(15156u, 27u)]);
    global1 = array<vec2<f32>, 1>();
    var var_1 = -(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-4966i, 0i, -1i)) | vec3<i32>(1i, 1i, 1i), vec3<i32>(i32(-1i) * -33536i, func_3(Struct_1(-350f, var_0.c.b, false, var_0.c.d)), -2147483647i)));
    var var_2 = select(var_0.c.b, select(vec2<bool>(false, true), var_0.c.b, !(any(var_0.c.b) | true)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(47920u), u_input.a), ~_wgslsmith_div_u32(1351u, 4294967295u)) < var_0.c.d.x);
    var var_3 = 0u;
    return any(select(select(!(!vec3<bool>(false, false, var_2.x)), !select(vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, true, false), vec3<bool>(false, false, var_2.x)), !(var_0.c.d.x == 45498u)), !vec3<bool>(select(false, true, var_2.x), var_2.x, false), select(select(!vec3<bool>(false, var_0.c.c, var_2.x), !vec3<bool>(false, false, var_2.x), false), select(select(vec3<bool>(false, var_0.c.b.x, true), vec3<bool>(var_0.c.c, var_2.x, var_2.x), vec3<bool>(true, var_0.c.b.x, var_0.c.c)), select(vec3<bool>(var_0.c.c, true, var_2.x), vec3<bool>(var_2.x, var_2.x, true), var_0.c.b.x), select(vec3<bool>(false, var_2.x, var_0.c.b.x), vec3<bool>(false, var_0.c.b.x, false), var_0.c.b.x)), vec3<bool>(var_0.c.b.x, var_2.x, var_2.x | true))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<i32>) -> vec3<bool> {
    global1 = array<vec2<f32>, 1>();
    let var_0 = -(-(~vec4<i32>(-5540i, arg_3.x, arg_3.x, arg_3.x)) >> (min(vec4<u32>(2376u, 62989u, 32607u, 14627u), vec4<u32>(arg_1.x, 89560u, arg_0, arg_1.x) ^ vec4<u32>(u_input.a, 4294967295u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) | firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(26831i, arg_3.x, arg_3.x, 0i), vec4<i32>(arg_3.x, -7447i, -11002i, arg_3.x)), -vec4<i32>(-2347i, arg_3.x, -1i, arg_3.x)), ~min(vec4<i32>(-1i, -1i, -1i, 2147483647i), vec4<i32>(-44007i, arg_3.x, arg_3.x, arg_3.x))));
    let var_1 = global0[_wgslsmith_index_u32(~abs(4294967295u), 27u)];
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    return select(select(select(vec3<bool>(any(vec3<bool>(var_1.b.x, var_1.c, var_1.c)), var_1.c, !var_1.c), vec3<bool>(!var_1.c, !var_1.b.x, all(var_1.b)), select(!vec3<bool>(true, var_1.b.x, var_1.b.x), vec3<bool>(false, true, var_1.b.x), 10750i > var_0.x)), vec3<bool>(false, true, true), !(!vec3<bool>(var_1.b.x, var_1.b.x, false))), !(!select(select(vec3<bool>(true, var_1.c, var_1.b.x), vec3<bool>(var_1.b.x, false, var_1.c), var_1.c), vec3<bool>(true, var_1.c, false), func_2())), select(!(!vec3<bool>(var_1.c, false, var_1.c)), vec3<bool>(var_1.b.x, select(!var_1.b.x, any(vec3<bool>(true, true, var_1.c)), true), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    let var_0 = !(!select(select(func_1(u_input.a, vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), -1379f, vec3<i32>(76807i, -21984i, 0i)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))));
    global1 = array<vec2<f32>, 1>();
    global1 = array<vec2<f32>, 1>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(107f - 2030f), _wgslsmith_f_op_f32(min(1682f, -1185f)))) + -200f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f - 1737f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1334f + _wgslsmith_f_op_f32(select(613f, 1062f, true)))))), global0[_wgslsmith_index_u32(u_input.a, 27u)]);
    let var_2 = var_1;
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-9149i, 1i, 0i), -(~firstLeadingBit(vec3<i32>(-1i, 0i, 0i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, var_1.a, -1007f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_2.c.a, -351f) - vec3<f32>(506f, var_2.a, var_2.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -451f, -430f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.c.a, -942f))))), var_1.c.d.x, firstTrailingBit(-(~1i)), abs(firstTrailingBit(firstLeadingBit(vec3<i32>(1i, 1i, 1i)))));
}

