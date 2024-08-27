struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(13769i, 0i, 0i, 2147483647i), vec4<i32>(-36476i, -1i, -1i, 19390i), vec4<i32>(12225i, -1i, -6479i, 0i), vec4<i32>(-24653i, 2147483647i, 53903i, 0i), vec4<i32>(0i, -29847i, 11037i, -9064i), vec4<i32>(13754i, 16274i, 2147483647i, 0i), vec4<i32>(23842i, 0i, 1i, 21969i), vec4<i32>(-1i, 1i, -34798i, 11134i), vec4<i32>(26514i, 19488i, 2147483647i, -937i), vec4<i32>(-1i, -7396i, 2147483647i, -26256i), vec4<i32>(37193i, 1i, -28938i, -16887i), vec4<i32>(58382i, -13935i, -34600i, 2147483647i), vec4<i32>(-4427i, -1i, 27692i, -60945i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 1i), vec4<i32>(-41854i, -16449i, -28299i, 23754i), vec4<i32>(55255i, 2147483647i, 1i, 1i), vec4<i32>(-82396i, 32208i, 25672i, -43748i), vec4<i32>(7126i, 8924i, 2147483647i, -1i));

var<private> global1: array<Struct_1, 15>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = Struct_1(!global2.a, select(-arg_0, abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, global2.b.x, -1i, global2.e.x), global2.b << (vec4<u32>(50284u, 53976u, global2.c.x, 4294967295u) % vec4<u32>(32u)))), global2.a.x), ~(~global2.c >> (global2.c % vec4<u32>(32u))), 68204u, firstTrailingBit(vec2<i32>(firstLeadingBit(-25391i), ~arg_0.x) >> (global2.c.yz % vec2<u32>(32u))));
    var var_1 = true;
    global1 = array<Struct_1, 15>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 15u)];
    let var_3 = 1806f;
    return 1u;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = 84003u;
    var var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-185f, -454f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, -672f)))), vec2<f32>(_wgslsmith_f_op_f32(round(294f)), 107f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1025f, 573f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1110f, -1000f))), vec2<bool>(true, true))))))));
    let var_3 = _wgslsmith_sub_vec4_i32(reverseBits(countOneBits(vec4<i32>(arg_2.b.x, arg_3.b.x, var_1.b.x, arg_2.b.x)) | firstTrailingBit(global0[_wgslsmith_index_u32(1u, 18u)])), global2.b) | _wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_sub_i32(2147483647i, 2147483647i), -23362i, 39344i, _wgslsmith_clamp_i32(arg_1.e.x >> (4294967295u % 32u), 15828i, -2147483647i)), vec4<i32>(~_wgslsmith_div_i32(23822i, arg_1.b.x), (-1i >> (arg_2.d % 32u)) ^ ~arg_2.e.x, var_1.e.x, -39237i));
    let var_4 = arg_2;
    return max(-var_1.b.x, i32(-1i) * -select(arg_3.b.x | var_4.e.x, -arg_3.e.x, !var_4.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_1(select(select(select(!vec2<bool>(global2.a.x, arg_0.a.x), !vec2<bool>(arg_0.a.x, true), vec2<bool>(true, true)), vec2<bool>(any(arg_0.a), !global2.a.x), true), vec2<bool>(!all(vec3<bool>(global2.a.x, arg_0.a.x, false)), !any(vec2<bool>(global2.a.x, arg_0.a.x))), true), global2.b, ~(~min(vec4<u32>(0u, u_input.a, 29473u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d, 1u, global2.c.x, arg_0.c.x), global2.c))), func_2(select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.b.x, arg_0.b.x), arg_0.b.xxx), -12031i, 2147483647i << (u_input.a % 32u), _wgslsmith_div_i32(626i, -40084i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.e.x, 22892i, -46676i), vec4<i32>(global2.e.x, -2147483647i, -2794i, global2.b.x)), vec4<bool>(arg_0.a.x, global2.a.x, any(vec3<bool>(global2.a.x, true, true)), global2.a.x)), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, global2.d, arg_0.d), 86937u), ~_wgslsmith_add_u32(u_input.a, u_input.a)), -(abs(arg_0.b.zx ^ global2.e) ^ vec2<i32>(arg_0.e.x, _wgslsmith_sub_i32(global2.e.x, 1i))));
    var var_1 = Struct_1(select(vec2<bool>(false, any(vec4<bool>(true, false, var_0.a.x, arg_0.a.x))), !vec2<bool>(false, arg_0.a.x), var_0.a.x != true), _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.e.x, -2147483647i, var_0.e.x, arg_0.b.x) | global0[_wgslsmith_index_u32(0u, 18u)], firstTrailingBit(arg_0.b), global0[_wgslsmith_index_u32(66084u, 18u)]), var_0.c, 3366u | ~global2.d, vec2<i32>(0i, ~(-2147483647i)) ^ vec2<i32>(-global2.e.x, -_wgslsmith_clamp_i32(global2.e.x, 1i, arg_0.b.x)));
    var_1 = arg_0;
    let var_2 = var_1.b.yw;
    let var_3 = arg_0.a;
    return vec4<i32>(1i | _wgslsmith_add_i32(i32(-1i) * -var_2.x, func_3(_wgslsmith_sub_vec2_u32(var_1.c.wz, vec2<u32>(var_0.d, var_0.c.x)), Struct_1(global2.a, global2.b, vec4<u32>(u_input.a, var_1.d, var_1.d, var_1.d), var_0.c.x, vec2<i32>(var_0.e.x, -1i)), global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(~39052u, 15u)])), ~0i, firstLeadingBit(arg_0.b.x), ~(i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, ~abs(u_input.a) | global2.c.x), ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(4294967295u, global2.d, 27460u)) & ~global2.d))), 15u)];
    global0 = array<vec4<i32>, 18>();
    var var_1 = Struct_1(!(!var_0.a), func_1(Struct_1(vec2<bool>(var_0.a.x, true), vec4<i32>(0i, global2.e.x, global2.b.x, 1i) << (global2.c % vec4<u32>(32u)), ~global2.c, _wgslsmith_sub_u32(var_0.c.x, 47539u), _wgslsmith_clamp_vec2_i32(global2.b.zz, var_0.e, vec2<i32>(2147483647i, global2.b.x))), 1621f) & abs(~global0[_wgslsmith_index_u32(min(u_input.a, 29614u), 18u)]), vec4<u32>(0u, 7302u | _wgslsmith_dot_vec4_u32(select(global2.c, global2.c, true), ~global2.c), ~global2.c.x | global2.c.x, var_0.c.x), 19024u, vec2<i32>(func_1(global1[_wgslsmith_index_u32(min(u_input.a, 599u), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f))).x, 14828i));
    var var_2 = _wgslsmith_dot_vec4_u32(firstLeadingBit(select(vec4<u32>(abs(4294967295u), var_0.c.x, 4294967295u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.d, u_input.a, u_input.a, 4294967295u), countOneBits(vec4<u32>(0u, var_0.d, u_input.a, 4294967295u))), !vec4<bool>(true, global2.a.x, false, false))), ~max(firstTrailingBit(vec4<u32>(391u, 20001u, u_input.a, 105006u)), vec4<u32>(var_1.d, _wgslsmith_dot_vec4_u32(var_1.c, global2.c), ~62100u, u_input.a)));
    global1 = array<Struct_1, 15>();
    global0 = array<vec4<i32>, 18>();
    global1 = array<Struct_1, 15>();
    var_1 = Struct_1(var_1.a, abs(~vec4<i32>(25618i, 53475i, 25157i, var_1.e.x) ^ -global0[_wgslsmith_index_u32(4294967295u, 18u)]) << (vec4<u32>(4294967295u | (global2.d | var_0.d), u_input.a, 1u, var_1.c.x) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, global2.d), firstLeadingBit(4294967295u), countOneBits(var_1.c.x), _wgslsmith_add_u32(0u, var_0.d)), vec4<u32>(select(var_0.c.x, global2.c.x, true), ~4294967295u, 4294967295u, 1u)), 149193u, -var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(24190u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-699f, _wgslsmith_f_op_f32(max(-999f, -230f)), _wgslsmith_f_op_f32(ceil(880f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-125f, -990f, -1865f), vec3<f32>(-954f, 1457f, -1873f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, -941f, -636f))))), ~_wgslsmith_dot_vec4_u32(reverseBits(global2.c), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 0u), u_input.a, var_0.c.x, _wgslsmith_clamp_u32(var_0.d, 60977u, global2.d))), -(~_wgslsmith_clamp_vec2_i32(global2.b.yw, -global2.e, global2.b.wy)), vec3<u32>(3412u, ~(_wgslsmith_mod_u32(var_0.d, 4294967295u) | 12422u), ~(~(~4294967295u))));
}

