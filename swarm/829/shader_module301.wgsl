struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(23059i, -422i, i32(-2147483648)), vec3<i32>(-1i, 1i, -1i), vec3<i32>(0i, 7878i, -14711i), vec3<i32>(46200i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-10789i, -15649i, -1i), vec3<i32>(i32(-2147483648), 1i, -1331i), vec3<i32>(1i, -42845i, 35899i), vec3<i32>(5917i, 40092i, 0i), vec3<i32>(1i, -1i, 37432i), vec3<i32>(i32(-2147483648), -25174i, 0i), vec3<i32>(68588i, 1i, -24192i), vec3<i32>(-13703i, 1966i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, -4478i), vec3<i32>(0i, -16532i, 2147483647i), vec3<i32>(-7302i, -20194i, 10235i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(i32(-2147483648), 21702i, -2209i), vec3<i32>(i32(-2147483648), -53011i, -1i), vec3<i32>(i32(-2147483648), 14763i, 34507i), vec3<i32>(-8982i, -1i, -49320i), vec3<i32>(i32(-2147483648), 8611i, -1i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(12099i, 29340i, 37638i), vec3<i32>(-7357i, 16824i, -20187i), vec3<i32>(7065i, i32(-2147483648), 0i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), -1i, -33190i));

var<private> global1: u32;

var<private> global2: array<u32, 19>;

var<private> global3: vec2<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> vec2<i32> {
    return u_input.b.yx;
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    var var_0 = Struct_5(Struct_4(any(!select(vec4<bool>(false, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a))), Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.b.b.xz, arg_0.b.b.yw), _wgslsmith_sub_u32(4294967295u, 79288u)), vec4<u32>(global2[_wgslsmith_index_u32(arg_0.b.a.x, 19u)], u_input.a.x << (u_input.a.x % 32u), min(u_input.c.x, 65789u), 0u), (vec2<i32>(u_input.b.x, 2147483647i) >> (vec2<u32>(u_input.c.x, arg_0.b.b.x) % vec2<u32>(32u))) ^ u_input.b.zz, _wgslsmith_f_op_vec3_f32(-arg_0.b.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.c)))));
    global3 = select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-40704i, u_input.b.x, u_input.b.x, -1i) >> (vec4<u32>(3843u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)], u_input.c.x, 2868u) % vec4<u32>(32u)), max(~vec4<i32>(var_0.a.b.c.x, global3.x, -21495i, -1i), vec4<i32>(13704i, var_0.a.b.c.x, -2147483647i, arg_0.b.c.x))), ~0i), var_0.a.b.c, vec2<bool>(arg_0.a, var_0.a.a));
    var var_1 = Struct_5(var_0.a);
    let var_2 = Struct_4(!any(vec2<bool>(false, all(vec2<bool>(true, var_0.a.a)))), Struct_1(var_1.a.b.b.wy, var_0.a.b.b, -_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-21070i, var_0.a.b.c.x)), ~vec2<i32>(var_0.a.b.c.x, 0i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.d.x, var_0.a.b.d.x, -716f), var_1.a.b.d)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.a.c, arg_0.c), vec2<f32>(var_0.a.c.x, 793f), select(vec2<bool>(arg_0.a, var_0.a.a), vec2<bool>(var_0.a.a, true), true))), vec2<f32>(_wgslsmith_f_op_f32(-586f - 2356f), 470f), !any(vec2<bool>(var_0.a.a, true)))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1015f)), arg_0.b.d.x), 652f)));
    var var_3 = arg_0.b.b.x;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a.b.d, _wgslsmith_f_op_vec3_f32(var_1.a.b.d - var_0.a.b.d))) + vec3<f32>(arg_0.b.d.x, _wgslsmith_f_op_f32(trunc(var_1.a.c.x)), var_2.b.d.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-var_1.a.c.x), -1556f) * arg_0.b.d)), var_1.a.b.d));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    global3 = abs(-vec2<i32>(u_input.b.x ^ 5609i, u_input.b.x >> (27323u % 32u))) | ((-func_2() & _wgslsmith_div_vec2_i32(~vec2<i32>(global3.x, global3.x), vec2<i32>(18505i, 54069i))) << (u_input.c.yw % vec2<u32>(32u)));
    var var_0 = Struct_1(u_input.e & u_input.e, u_input.c, ~u_input.b.yx, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(select(arg_0.x, arg_0.x, arg_0.x), Struct_1(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 19u)]), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], 0u, 52630u, global2[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec2<i32>(34427i, u_input.b.x), vec3<f32>(-994f, 707f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(877f, 655f) + vec2<f32>(-927f, -682f))))))));
    global3 = reverseBits(vec2<i32>(global3.x, var_0.c.x));
    let var_1 = Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(var_0.b.yz, ~(~var_0.a)), vec4<u32>(~u_input.c.x, firstLeadingBit(global2[_wgslsmith_index_u32(18688u, 19u)]) ^ ~53337u, 40996u, abs(firstLeadingBit(84305u))), u_input.b.xz, var_0.d), firstTrailingBit(-vec4<i32>(2147483647i, _wgslsmith_sub_i32(global3.x, global3.x), _wgslsmith_add_i32(global3.x, var_0.c.x), -2147483647i)), Struct_1(select(vec2<u32>(0u, u_input.d), _wgslsmith_clamp_vec2_u32(var_0.b.xz, vec2<u32>(global2[_wgslsmith_index_u32(10127u, 19u)], 1u), vec2<u32>(var_0.a.x, 0u)), !arg_0.xz) | ((u_input.e << (var_0.b.yz % vec2<u32>(32u))) & vec2<u32>(36438u, 1670u)), firstLeadingBit(vec4<u32>(~11508u, 37886u >> (u_input.c.x % 32u), 4294967295u ^ u_input.e.x, min(1u, 0u))), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -1i), vec2<i32>(26773i, 0i)), vec2<i32>(var_0.c.x, u_input.b.x) >> (vec2<u32>(125150u, u_input.a.x) % vec2<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-218f - _wgslsmith_f_op_f32(step(var_0.d.x, var_0.d.x))), var_0.d.x)));
    var var_2 = _wgslsmith_div_f32(var_1.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1963f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1282f))))));
    return Struct_4(false, Struct_1(min(vec2<u32>(var_0.b.x, 31039u), _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], var_1.c.a.x), abs(var_1.a.a))), var_1.c.b, ~max(vec2<i32>(23967i, 2147483647i), -var_1.c.c), var_1.c.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.d.zz) - var_0.d.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -85091i, _wgslsmith_mult_i32(global3.x, -20821i), countOneBits(0i), _wgslsmith_sub_i32(1i, -16695i)) >> (firstTrailingBit(u_input.c) % vec4<u32>(32u)), max(vec4<i32>(global3.x, 2147483647i, global3.x, u_input.b.x), vec4<i32>(1802i, -40390i, global3.x, u_input.b.x)) & vec4<i32>(12176i, 20433i, u_input.b.x, reverseBits(-2147483647i)));
    var var_1 = func_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))));
    global1 = select(global2[_wgslsmith_index_u32(u_input.d, 19u)], func_1(!vec3<bool>(true, var_1.a, var_1.a)).b.a.x >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(6597u, u_input.c.x), _wgslsmith_clamp_u32(u_input.c.x, global2[_wgslsmith_index_u32(35278u, 19u)], 4294967295u)), 49098u >> ((var_1.b.a.x & u_input.c.x) % 32u)) % 32u), var_1.b.c.x >= 2147483647i);
    let var_2 = func_1(vec3<bool>(!all(select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(false, var_1.a, true), vec3<bool>(false, false, var_1.a))), any(!(!vec3<bool>(true, var_1.a, var_1.a))), var_1.a));
    global3 = _wgslsmith_mod_vec2_i32(vec2<i32>(-reverseBits(u_input.b.x), 7530i | var_0.x) >> (_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(var_2.b.a.x, var_2.b.a.x)), vec2<u32>(0u, u_input.a.x)) % vec2<u32>(32u)), var_1.b.c);
    global1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c.wzz, vec3<u32>(1u, _wgslsmith_mult_u32(0u, global2[_wgslsmith_index_u32(4294967295u, 19u)]), 28990u)) >> ((27552u >> (global2[_wgslsmith_index_u32(26765u ^ select(1u, 4294967295u, true), 19u)] % 32u)) % 32u), var_2.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(24207u, ~(global2[_wgslsmith_index_u32(var_2.b.b.x, 19u)] << (32734u % 32u))), 2147483647i, var_0.yww);
}

