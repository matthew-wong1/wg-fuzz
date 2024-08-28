struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<i32>(52337i, i32(-2147483648), -1i), 4294967295u, vec3<u32>(0u, 4294967295u, 0u), 1i, vec4<u32>(1u, 0u, 34290u, 32885u)), Struct_1(vec3<i32>(45204i, 2147483647i, i32(-2147483648)), 23276u, vec3<u32>(31938u, 4294967295u, 0u), 833i, vec4<u32>(1u, 50591u, 0u, 0u)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), 1u, vec3<u32>(4294967295u, 1u, 36098u), -41358i, vec4<u32>(4294967295u, 4294967295u, 65788u, 23053u)), Struct_1(vec3<i32>(0i, 2147483647i, 25604i), 12486u, vec3<u32>(138867u, 0u, 4294967295u), -1340i, vec4<u32>(1u, 34769u, 0u, 4294967295u)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 17254i), 1u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), -38422i, vec4<u32>(4294967295u, 1u, 1832u, 17328u)), Struct_1(vec3<i32>(2147483647i, -26479i, -3568i), 43507u, vec3<u32>(33667u, 0u, 32901u), 0i, vec4<u32>(4294967295u, 40870u, 4294967295u, 48683u)), Struct_1(vec3<i32>(i32(-2147483648), -6644i, 51992i), 1u, vec3<u32>(67837u, 8842u, 7344u), -43691i, vec4<u32>(67736u, 1u, 25u, 0u)), Struct_1(vec3<i32>(0i, 0i, -1i), 20065u, vec3<u32>(4294967295u, 30089u, 1u), 0i, vec4<u32>(0u, 0u, 4294967295u, 0u)), Struct_1(vec3<i32>(1i, 2147483647i, -42637i), 4294967295u, vec3<u32>(0u, 4294967295u, 53302u), 1i, vec4<u32>(1u, 1u, 4294967295u, 42683u)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 41302i), 0u, vec3<u32>(25888u, 22125u, 4294967295u), 30837i, vec4<u32>(4294967295u, 4294967295u, 26395u, 1u)), Struct_1(vec3<i32>(1i, -1i, -5947i), 25936u, vec3<u32>(25797u, 4294967295u, 4294967295u), 0i, vec4<u32>(59957u, 57020u, 0u, 43150u)), Struct_1(vec3<i32>(-18710i, i32(-2147483648), 1i), 6665u, vec3<u32>(43474u, 1u, 45084u), i32(-2147483648), vec4<u32>(62826u, 72396u, 0u, 30755u)), Struct_1(vec3<i32>(47257i, 23008i, 2147483647i), 4294967295u, vec3<u32>(0u, 1u, 0u), 1i, vec4<u32>(91283u, 10863u, 0u, 31515u)), Struct_1(vec3<i32>(-1i, 4514i, -1i), 30360u, vec3<u32>(1u, 38721u, 4294967295u), i32(-2147483648), vec4<u32>(66227u, 100617u, 4294967295u, 58747u)), Struct_1(vec3<i32>(30175i, 24373i, 0i), 45780u, vec3<u32>(1u, 92157u, 11873u), -35669i, vec4<u32>(4294967295u, 0u, 46204u, 35535u)), Struct_1(vec3<i32>(28691i, 2147483647i, 2147483647i), 16415u, vec3<u32>(1u, 35717u, 7302u), i32(-2147483648), vec4<u32>(0u, 501u, 84899u, 1u)), Struct_1(vec3<i32>(2797i, 26310i, 1i), 79021u, vec3<u32>(0u, 37699u, 1u), i32(-2147483648), vec4<u32>(13081u, 2130u, 0u, 0u)), Struct_1(vec3<i32>(11781i, 2147483647i, -5221i), 49675u, vec3<u32>(4294967295u, 0u, 1u), 2147483647i, vec4<u32>(21871u, 4294967295u, 4294967295u, 1u)), Struct_1(vec3<i32>(-45058i, -16651i, 2147483647i), 37095u, vec3<u32>(1u, 4294967295u, 32071u), 2147483647i, vec4<u32>(0u, 4294967295u, 32479u, 4294967295u)));

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 9>;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(1212i, 18366i, 1i), 57683u, vec3<u32>(29144u, 6785u, 1u), -19178i, vec4<u32>(0u, 4294967295u, 0u, 1u));

var<private> global4: u32 = 1u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(971f, 573f, -381f), vec3<f32>(-607f, 1020f, -947f), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1737f, 477f, -1064f)))))));
    var var_1 = arg_0;
    var var_2 = firstTrailingBit(_wgslsmith_sub_i32(-(_wgslsmith_add_i32(u_input.c.x, var_1.a.x) | -8785i), 2147483647i));
    var_1 = arg_0;
    let var_3 = -(abs(_wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(arg_0.a.x, arg_1.a.x))) | select(u_input.c.x, var_1.a.x, true));
    return vec4<bool>(true, true, true, all(vec2<bool>(true, true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_1.a, ~arg_1.b, vec3<u32>(14004u, 66887u, 0u ^ (global3.e.x & 0u)), ~(-31430i), vec4<u32>(((arg_1.c.x & u_input.a.x) ^ _wgslsmith_mult_u32(arg_1.e.x, 19791u)) & arg_1.b, u_input.a.x, (global3.e.x & arg_1.b) << (u_input.a.x % 32u), ~_wgslsmith_sub_u32(global3.c.x, 43186u)));
    var var_1 = vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.b, firstLeadingBit(14539u)), ~(~u_input.a.x)), 43055u);
    let var_2 = vec4<bool>(any(func_3(Struct_1(vec3<i32>(u_input.d, u_input.c.x, arg_1.a.x), var_1.x, _wgslsmith_mod_vec3_u32(global3.c, vec3<u32>(9985u, 4294967295u, 54756u)), _wgslsmith_sub_i32(-1i, var_0.d), arg_1.e), var_0, max(-vec2<i32>(arg_1.a.x, 0i), -u_input.c), min(countOneBits(global3.b), var_1.x))), false, arg_0.x, !(firstLeadingBit(global3.c.x | var_0.b) == (var_1.x | global3.c.x)));
    global2 = array<vec2<u32>, 9>();
    let var_3 = true;
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> vec2<bool> {
    global0 = array<Struct_1, 19>();
    var var_0 = arg_1;
    global0 = array<Struct_1, 19>();
    let var_1 = vec4<i32>(~u_input.b.x, 0i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(15211i, 86487i, -2147483647i, 2147483647i), u_input.b ^ vec4<i32>(-17162i, 1i, 0i, arg_1.x)), abs(vec4<i32>(323i, arg_0, arg_1.x, 2147483647i))), reverseBits(2147483647i)), -2881i);
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(~abs(24590i), i32(-1i) * -14876i, ~(-2147483647i)), ~(~(-vec3<i32>(1i, global3.d, 1i)))), 4294967295u, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(93961u, global3.c.x, 0u, u_input.a.x), ~vec4<u32>(u_input.a.x, global3.b, 4294967295u, global3.c.x)), func_2(select(vec2<bool>(false, false), vec2<bool>(false, true), false), Struct_1(var_0.yxx, 61041u, vec3<u32>(u_input.a.x, 1u, global3.e.x), global3.d, global3.e))), 20875u, ~91352u), ~var_0.x, ~(~(~select(vec4<u32>(global3.b, global3.e.x, global3.b, 40992u), vec4<u32>(4294967295u, u_input.a.x, 5021u, 14719u), false))));
    return func_3(Struct_1(~(-vec3<i32>(var_1.x, global3.a.x, 0i)), 1u, u_input.a, ~_wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, var_1.x), ~var_2.a.x), reverseBits(global3.e)), global0[_wgslsmith_index_u32(18999u, 19u)], global3.a.xz, 14747u).wx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(any(vec2<bool>(true, true)), true)), !(!(!func_1(-1i, u_input.b))), true);
    let var_1 = Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(-27488i, global3.d, global3.d) & u_input.b.yyz, reverseBits(global3.a)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global3.e.wx, vec2<u32>(u_input.a.x, 1u) | vec2<u32>(1u, global3.b)), firstLeadingBit(vec2<u32>(4294967295u, global3.b)) << (~global2[_wgslsmith_index_u32(global3.b, 9u)] % vec2<u32>(32u))) & (1u >> (u_input.a.x % 32u)), (~reverseBits(global3.c) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 53736u, u_input.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(global3.b, u_input.a.x, 22590u), global3.c)) % vec3<u32>(32u))) >> (select(~(vec3<u32>(u_input.a.x, global3.c.x, 0u) | u_input.a), global3.e.yww, vec3<bool>(any(vec3<bool>(var_0.x, false, true)), false, any(vec3<bool>(var_0.x, false, var_0.x)))) % vec3<u32>(32u)), _wgslsmith_div_i32(_wgslsmith_add_i32(global3.d, 1i), 1i), global3.e);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f - -235f))) + -1000f);
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 19u)];
    let var_4 = min(_wgslsmith_mod_u32(u_input.a.x, 0u), 67856u);
    let x = u_input.a;
    s_output = StorageBuffer(497f, -vec3<i32>(6747i, _wgslsmith_mod_i32(23782i, global3.a.x), u_input.d), _wgslsmith_mult_vec3_i32(u_input.b.xxx, global3.a), vec2<i32>(-_wgslsmith_dot_vec4_i32(u_input.b ^ vec4<i32>(u_input.c.x, -5182i, global3.d, 20460i), vec4<i32>(-2147483647i, var_1.a.x, -48228i, -1i) & u_input.b), _wgslsmith_clamp_i32(-var_3.a.x, -u_input.c.x, 2147483647i) & global3.a.x));
}

