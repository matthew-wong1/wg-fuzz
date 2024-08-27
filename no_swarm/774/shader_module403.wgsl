struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(2147483647i, -28302i, i32(-2147483648), 14406i), vec4<i32>(-23392i, -5131i, i32(-2147483648), -8584i), vec4<i32>(36292i, i32(-2147483648), 22234i, 44208i), vec4<i32>(1i, 47828i, -1i, 11492i), vec4<i32>(26719i, 2147483647i, -1i, -9933i), vec4<i32>(17674i, 855i, 32755i, 0i), vec4<i32>(-1i, 1i, -34535i, 0i), vec4<i32>(317i, -10937i, -14901i, 1i), vec4<i32>(28173i, 19726i, 2147483647i, 23191i), vec4<i32>(-198i, -47727i, i32(-2147483648), 11591i), vec4<i32>(1i, 19439i, 11058i, 0i), vec4<i32>(0i, 26663i, -1i, -17661i), vec4<i32>(8294i, 0i, 493i, -509i), vec4<i32>(20728i, 15370i, 2147483647i, -1i), vec4<i32>(-1i, -1i, 5899i, -51555i), vec4<i32>(-54417i, 2147483647i, -162i, 55796i), vec4<i32>(-69962i, -25712i, -61390i, -2713i), vec4<i32>(2147483647i, 3105i, 2147483647i, 33192i), vec4<i32>(43443i, -19878i, 1i, -1i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 30283i), vec4<i32>(1i, -1i, 47725i, 2147483647i), vec4<i32>(1i, 49228i, 80876i, i32(-2147483648)), vec4<i32>(32274i, 242i, -32829i, -76808i), vec4<i32>(i32(-2147483648), 2147483647i, 16888i, -1i), vec4<i32>(2147483647i, -53049i, i32(-2147483648), 1i));

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false, -4903i, vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), vec4<bool>(true, false, false, true)), Struct_1(false, 20238i, vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), vec4<bool>(true, true, true, true)), Struct_1(true, 1i, vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), vec4<bool>(false, false, false, false)), Struct_1(true, 1i, vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), vec4<bool>(false, true, false, true)), Struct_1(true, 1i, vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), vec4<bool>(false, false, true, false)), Struct_1(true, -1i, vec4<bool>(true, true, false, false), vec3<bool>(true, true, true), vec4<bool>(false, true, false, true)), Struct_1(true, -15738i, vec4<bool>(true, true, true, true), vec3<bool>(false, false, false), vec4<bool>(false, false, false, true)), Struct_1(false, -38118i, vec4<bool>(false, true, false, true), vec3<bool>(true, false, true), vec4<bool>(true, false, false, false)), Struct_1(false, -24432i, vec4<bool>(true, false, false, true), vec3<bool>(true, true, true), vec4<bool>(true, false, false, true)), Struct_1(true, i32(-2147483648), vec4<bool>(false, false, true, false), vec3<bool>(false, true, false), vec4<bool>(true, false, false, true)), Struct_1(false, -12028i, vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), vec4<bool>(false, false, false, true)), Struct_1(false, 2147483647i, vec4<bool>(true, true, false, false), vec3<bool>(true, false, true), vec4<bool>(true, true, true, true)), Struct_1(true, 2419i, vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), vec4<bool>(true, false, false, true)), Struct_1(true, 1370i, vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), vec4<bool>(false, false, false, true)), Struct_1(true, 2147483647i, vec4<bool>(false, true, false, false), vec3<bool>(true, true, false), vec4<bool>(false, true, false, false)), Struct_1(false, 2147483647i, vec4<bool>(true, true, true, true), vec3<bool>(false, true, true), vec4<bool>(false, true, false, true)), Struct_1(true, 23121i, vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), vec4<bool>(true, false, true, true)), Struct_1(false, 43641i, vec4<bool>(true, true, false, false), vec3<bool>(false, false, false), vec4<bool>(false, false, false, true)), Struct_1(true, 1i, vec4<bool>(true, true, false, false), vec3<bool>(true, false, true), vec4<bool>(true, false, false, false)), Struct_1(true, 17175i, vec4<bool>(false, false, true, false), vec3<bool>(false, true, true), vec4<bool>(true, true, false, false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> i32 {
    global1 = array<vec4<i32>, 25>();
    global1 = array<vec4<i32>, 25>();
    global2 = array<Struct_1, 20>();
    var var_0 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_mult_u32(~u_input.a.x, ~27307u) | ~arg_1.x)), 11u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1276f, -143f), vec2<f32>(778f, 1069f))), vec2<f32>(-1214f, 1269f), vec2<bool>(var_0.d.x, true))), vec2<f32>(_wgslsmith_div_f32(1000f, 1051f), _wgslsmith_f_op_f32(-1068f + -298f)))))));
    return var_0.b;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = ~vec3<i32>(u_input.b, firstTrailingBit(-u_input.b), 3539i);
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 11u)];
    let var_2 = vec2<bool>(true, var_1.c.x || true);
    global1 = array<vec4<i32>, 25>();
    let var_3 = max(abs(-1i), 0i);
    return _wgslsmith_mult_i32(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-35594i, var_1.b, 6716i), ~vec3<i32>(var_0.x, var_1.b, -6020i))), func_3(~(~u_input.c.xxx) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), _wgslsmith_sub_vec3_u32(u_input.c.xyw, u_input.c.zxw)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.c.wy, u_input.c.wx), vec2<u32>(u_input.c.x, ~1u))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_1(false, func_2(vec2<f32>(-242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) - -1000f))), !(!(!vec4<bool>(false, true, arg_2, arg_2))), select(vec3<bool>(arg_2, true, arg_2), !select(select(vec3<bool>(true, false, arg_2), vec3<bool>(true, false, true), vec3<bool>(arg_2, false, true)), !vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, true, true)), select(!select(vec3<bool>(arg_2, true, false), vec3<bool>(true, arg_2, false), arg_2), vec3<bool>(u_input.b != 31207i, arg_2, !arg_2), arg_3.x < ~u_input.a.x)), !vec4<bool>(!(arg_2 | false), true, true, true));
    let var_1 = 1i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -870f), 340f, any(vec3<bool>(var_0.d.x, var_0.e.x, false))))));
    global0 = array<Struct_1, 11>();
    var var_3 = Struct_1(arg_2, _wgslsmith_sub_i32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1288f, var_2))) + vec2<f32>(287f, var_2))), _wgslsmith_clamp_i32(u_input.b, reverseBits(var_0.b & var_1), func_3(vec3<u32>(arg_1, 1u, arg_0) << (vec3<u32>(61034u, 0u, 38351u) % vec3<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_3.x), u_input.a)))), vec4<bool>(arg_2, !(!var_0.c.x) & var_0.e.x, var_0.a, var_0.e.x), select(!vec3<bool>(true, var_2 != -841f, var_0.e.x), var_0.d, true), !select(var_0.e, var_0.e, arg_2));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(any(select(vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, func_1(1u, u_input.c.x, true, vec2<u32>(8727u, u_input.c.x)), func_1(u_input.a.x, u_input.a.x, true, vec2<u32>(0u, u_input.c.x)), true), true)), -2355i, vec4<bool>(false, true, any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false))), true), vec3<bool>(true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, func_1(1u, u_input.c.x, false, vec2<u32>(4294967295u, 29489u)), any(vec2<bool>(false, false)), u_input.b != 7487i), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a.x ^ ~u_input.a.x, 76342u) ^ select(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), ~u_input.c.yz >> (abs(vec2<u32>(1u, 50452u)) % vec2<u32>(32u)), vec2<bool>(var_1.b <= var_1.b, !var_1.d.x)), 0i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), -1000f, 1360f), _wgslsmith_add_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(var_1.b, 39130i), _wgslsmith_div_vec2_i32(vec2<i32>(-48954i, -2147483647i), vec2<i32>(-22659i, u_input.b)))), -firstTrailingBit(~vec2<i32>(u_input.b, u_input.b))), _wgslsmith_div_vec2_i32(reverseBits(-_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.b, 63327i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 0i), abs(vec2<i32>(-5180i, var_1.b)), max(vec2<i32>(var_1.b, u_input.b), vec2<i32>(0i, u_input.b))) >> (vec2<u32>(abs(u_input.a.x), _wgslsmith_div_u32(u_input.c.x, u_input.c.x)) % vec2<u32>(32u))));
}

