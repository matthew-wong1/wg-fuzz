struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(27172i, 1728f, vec2<bool>(false, false)), Struct_1(15514i, 1126f, vec2<bool>(true, true)), Struct_1(1i, -1023f, vec2<bool>(false, false)), Struct_1(2147483647i, 422f, vec2<bool>(true, false)), Struct_1(0i, 292f, vec2<bool>(false, true)), Struct_1(2147483647i, -1470f, vec2<bool>(true, true)), Struct_1(37335i, -839f, vec2<bool>(false, true)), Struct_1(70380i, -477f, vec2<bool>(false, false)), Struct_1(-8794i, 145f, vec2<bool>(false, true)), Struct_1(2147483647i, -274f, vec2<bool>(false, true)), Struct_1(1i, -604f, vec2<bool>(false, true)), Struct_1(1i, 1359f, vec2<bool>(false, false)), Struct_1(-37889i, 277f, vec2<bool>(false, true)), Struct_1(44525i, 1000f, vec2<bool>(false, false)), Struct_1(0i, -237f, vec2<bool>(false, true)), Struct_1(2147483647i, -797f, vec2<bool>(true, true)), Struct_1(-10363i, 866f, vec2<bool>(true, false)), Struct_1(35211i, 816f, vec2<bool>(false, true)), Struct_1(17624i, 1823f, vec2<bool>(false, true)), Struct_1(-1i, -130f, vec2<bool>(false, true)), Struct_1(-25434i, 1000f, vec2<bool>(true, false)), Struct_1(16423i, -115f, vec2<bool>(true, true)), Struct_1(-91143i, 466f, vec2<bool>(false, false)), Struct_1(-42348i, 747f, vec2<bool>(false, true)), Struct_1(-21615i, 414f, vec2<bool>(false, true)), Struct_1(-19922i, -1675f, vec2<bool>(false, true)), Struct_1(-3011i, 612f, vec2<bool>(true, false)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> i32 {
    let var_0 = arg_0.c;
    var var_1 = arg_0.c.b;
    let var_2 = Struct_2(~(~(-arg_0.c.a | (var_0.a ^ var_0.a))), Struct_1(~(~(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), !(!var_1.c)));
    var_1 = var_2.b;
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(460f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.b - arg_0.e.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b.b + arg_0.c.b.b), _wgslsmith_f_op_f32(trunc(var_1.b))))))), select(select(select(vec2<bool>(true, true), select(var_2.b.c, vec2<bool>(arg_0.e.c.x, var_2.b.c.x), true), var_1.c.x), arg_0.c.b.c, !all(vec4<bool>(var_1.c.x, arg_0.e.c.x, false, false))), !select(vec2<bool>(false, arg_0.e.c.x), select(var_0.b.c, arg_0.c.b.c, var_0.b.c.x), arg_0.e.c), select(vec2<bool>(0u <= u_input.a.x, true), var_2.b.c, var_2.b.c.x)));
    return var_2.a.x;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    let var_0 = u_input.b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2)), arg_2);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(var_1.x - -1111f), ~(-(~(var_0 >> (arg_3.x % 32u)))), Struct_2(-vec4<i32>(-66589i, u_input.b, func_3(Struct_3(293f, var_0, Struct_2(vec4<i32>(1i, -2147483647i, -2147483647i, 15559i), Struct_1(2147483647i, 427f, vec2<bool>(arg_1.x, arg_1.x))), arg_3, global0[_wgslsmith_index_u32(0u, 27u)]), 51892u, -35701i), -var_0), Struct_1(reverseBits(select(u_input.b, var_0, arg_1.x)), _wgslsmith_f_op_f32(-arg_2), select(vec2<bool>(true, arg_1.x), select(vec2<bool>(true, false), arg_1.zz, arg_1.zz), !vec2<bool>(true, arg_1.x)))), vec4<u32>(5239u, ~(~u_input.c) >> (((arg_3.x << (u_input.c % 32u)) << (arg_3.x % 32u)) % 32u), arg_0, 0u), Struct_1(u_input.b, -248f, vec2<bool>(arg_1.x, arg_1.x)));
    let var_3 = !vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x);
    global0 = array<Struct_1, 27>();
    return _wgslsmith_f_op_f32(f32(-1f) * -912f);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(-3017i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f - 457f) + _wgslsmith_f_op_f32(select(1230f, -393f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4294967295u, vec3<bool>(true, true, false), 930f, vec4<u32>(u_input.a.x, 4294967295u, u_input.c, u_input.c)))))), vec2<bool>(true, true));
    let var_1 = Struct_2(select(min(~max(vec4<i32>(-2147483647i, 2147483647i, -46725i, 1i), vec4<i32>(39157i, -1i, -2147483647i, 0i)), vec4<i32>(u_input.b >> (40513u % 32u), -var_0.a, var_0.a, abs(var_0.a))), -vec4<i32>(-var_0.a, var_0.a, 1i, ~3132i), !var_0.c.x), global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_sub_u32(~u_input.a.x, 1u)), 27u)]);
    global0 = array<Struct_1, 27>();
    let var_2 = _wgslsmith_sub_i32((_wgslsmith_clamp_i32(func_3(Struct_3(var_0.b, var_0.a, Struct_2(vec4<i32>(var_0.a, var_1.b.a, var_0.a, var_1.b.a), Struct_1(36305i, 372f, vec2<bool>(false, false))), vec4<u32>(u_input.c, 1u, 0u, u_input.c), Struct_1(var_0.a, var_0.b, vec2<bool>(var_0.c.x, true))), u_input.a.x, var_1.a.x), -var_0.a, abs(var_0.a)) << ((firstLeadingBit(23026u) | (u_input.c << (u_input.c % 32u))) % 32u)) ^ 8021i, 0i);
    let var_3 = -var_1.b.a;
    return Struct_2(var_1.a, var_0);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.b)))));
    var var_1 = ~(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 24016u, 4294967295u, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 9769u, 27166u), vec4<u32>(22106u, u_input.c, 3600u, u_input.a.x)))));
    var var_2 = -_wgslsmith_dot_vec2_i32(-max(min(arg_1.a.zx, arg_1.a.yz), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(arg_1.b.a, arg_1.a.x))), arg_1.a.xz);
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -333f, -121f) * vec3<f32>(arg_1.b.b, arg_1.b.b, var_0)), vec3<f32>(-1000f, 244f, -844f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1183f, var_0, -234f)), arg_0))))));
    var var_4 = -(~35965i | _wgslsmith_mod_i32(~(-2147483647i), -_wgslsmith_clamp_i32(arg_1.b.a, arg_1.b.a, -1i)));
    return arg_1.a.xyw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(abs(22416u), countOneBits(_wgslsmith_div_u32(22600u, u_input.a.x)) | 1u) | u_input.c;
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
    let var_2 = -_wgslsmith_dot_vec3_i32(func_4(select(vec3<bool>(false, var_1.c.x, false), vec3<bool>(var_1.c.x, var_1.c.x, true), vec3<bool>(var_1.c.x, var_1.c.x, true)), func_1(), var_1.c.x) | vec3<i32>(firstTrailingBit(-1i), func_1().b.a, 2147483647i), firstLeadingBit(vec3<i32>(var_1.a, -16384i, u_input.b)) >> ((~vec3<u32>(u_input.c, u_input.c, u_input.a.x) >> (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_3 = ~select(~(vec4<u32>(u_input.c, 24875u, 4294967295u, 1u) ^ vec4<u32>(550u, u_input.a.x, u_input.a.x, u_input.a.x)), ~(~vec4<u32>(4294967295u, 19555u, 0u, u_input.a.x)), select(select(vec4<bool>(false, var_1.c.x, true, false), vec4<bool>(true, false, var_1.c.x, var_1.c.x), true), vec4<bool>(false, false, false, var_1.c.x), u_input.c < 4294967295u)) << ((~(~_wgslsmith_mult_vec4_u32(vec4<u32>(35224u, 0u, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.a.x, 0u, u_input.c))) | vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.c)), min(u_input.a.x, u_input.c), (1u >> (u_input.a.x % 32u)) | ~u_input.c)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1091f), 240f, var_1.c.x))), _wgslsmith_sub_vec2_i32(~vec2<i32>(i32(-1i) * -59750i, -64852i), vec2<i32>(~1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2, -1i, var_2), vec4<i32>(var_1.a, var_2, 0i, var_2)))), _wgslsmith_div_i32(2147483647i, var_2));
}

