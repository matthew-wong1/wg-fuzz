struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(4294967295u, vec3<u32>(85213u, 4294967295u, 3523u), 4294967295u)), Struct_2(Struct_1(1u, vec3<u32>(14334u, 6142u, 26459u), 21360u)));

var<private> global1: array<Struct_1, 12>;

var<private> global2: vec3<f32> = vec3<f32>(-256f, 743f, -1372f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<i32> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(floor(-967f));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(arg_2));
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_4 = arg_0.x;
    return vec4<i32>(abs(1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 2147483647i, -12131i), vec4<i32>(-2147483647i, 2147483647i, -26922i, 1i))), _wgslsmith_add_i32(max(12326i << (1u % 32u), 1i), max(_wgslsmith_mod_i32(-19243i, -21656i), abs(0i))), -1i, ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(6063i, -59023i, 0i), vec3<i32>(15938i, -29336i, -27242i), arg_0.x), select(vec3<i32>(2147483647i, -80240i, -2147483647i), vec3<i32>(-4133i, 2147483647i, 1i), false))) ^ min(reverseBits(reverseBits(~vec4<i32>(0i, 1i, 62398i, 6181i))), -(~vec4<i32>(-14819i, 1i, 5466i, -25437i)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = false;
    let var_1 = _wgslsmith_dot_vec4_i32(~max(~vec4<i32>(-2147483647i, arg_0.x, arg_0.x, -1i), vec4<i32>(-67729i, arg_0.x, arg_0.x, 30752i)), select(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) >> (vec4<u32>(4259u, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_0.x, 10298i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -2147483647i)), !vec4<bool>(var_0, var_0, true, var_0)) ^ (func_3(vec3<bool>(var_0, var_0, true), Struct_1(u_input.a, vec3<u32>(0u, u_input.a, u_input.a), 15782u), vec3<f32>(global2.x, 2410f, global2.x)) & _wgslsmith_div_vec4_i32(vec4<i32>(-4906i, 0i, arg_0.x, -33616i), vec4<i32>(arg_0.x, arg_0.x, 1i, 54259i)))) ^ firstLeadingBit(59041i);
    var var_2 = min(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1, 410i, var_1, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_0.x, -64533i, 28227i), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 2147483647i))) & ~reverseBits(-1821i), ~(-51216i)) << (13350u % 32u);
    var var_3 = global1[_wgslsmith_index_u32(1u, 12u)];
    var_3 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(78467u, ~(1u >> (var_3.a % 32u))), vec2<u32>(66182u << (u_input.a % 32u), var_3.b.x) ^ max(var_3.b.zz, ~vec2<u32>(2600u, var_3.a))), var_3.b, var_3.b.x);
    return Struct_2(global1[_wgslsmith_index_u32(var_3.a, 12u)]);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = arg_1;
    let var_1 = vec2<bool>(true, !(!(!arg_2)));
    let var_2 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(~(~4294967295u), func_2(vec2<i32>(-37545i, -1i)).a.c << (max(arg_3.a.c, 1u) % 32u)), vec2<u32>(u_input.a, 0u));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 184f, global2.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - global2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, -736f, arg_2)))), _wgslsmith_f_op_f32(round(-1158f)))))));
    var var_4 = Struct_2(func_2(_wgslsmith_add_vec2_i32(arg_0.yx, ~(-arg_0.yz))).a);
    return -(~min(arg_0.x, arg_0.x)) | -(~(-7399i));
}

fn func_1(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = 18266u;
    return vec4<i32>(arg_0.x, ~(-arg_0.x), _wgslsmith_mod_i32(firstTrailingBit(func_4(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 6339i, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), global0[_wgslsmith_index_u32(4294967295u, 2u)], select(false, false, true), func_2(arg_0))), arg_0.x), ~firstLeadingBit(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a, 2u)];
    var var_1 = countOneBits(abs(-abs(vec4<i32>(2147483647i, 7013i, 10750i, -26201i))) ^ (abs(func_1(vec2<i32>(2147483647i, -1i))) & (vec4<i32>(-1i) * -vec4<i32>(-1i, 1i, -1i, 0i))));
    var var_2 = select(vec4<bool>(all(vec3<bool>(false, false, false)) & !all(vec2<bool>(false, false)), ((2055f >= global2.x) | any(vec3<bool>(true, true, false))) | !any(vec2<bool>(true, false)), false, true), select(vec4<bool>(true, true, 0u <= abs(u_input.a), false), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))))), any(vec4<bool>(true, any(vec2<bool>(true, true)), !(var_1.x > 1i), (var_1.x << (16541u % 32u)) < (2147483647i << (u_input.a % 32u)))));
    let var_3 = Struct_2(func_2(vec2<i32>(-1i, 8853i)).a);
    var var_4 = var_2.xzw;
    var_4 = !(!(!vec3<bool>(true, true, all(vec3<bool>(false, var_4.x, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(371f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, 994f)) * _wgslsmith_f_op_f32(-162f * global2.x))), 120f));
}

