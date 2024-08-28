struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(0u, 1u), vec2<u32>(17360u, 8218u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 26495u), vec2<u32>(0u, 0u), vec2<u32>(1u, 46784u), vec2<u32>(4294967295u, 77266u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(52131u, 0u), vec2<u32>(0u, 9632u), vec2<u32>(1u, 4294967295u), vec2<u32>(1043u, 45810u), vec2<u32>(74625u, 23038u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(44617u, 0u), vec2<u32>(1u, 49564u), vec2<u32>(0u, 18050u), vec2<u32>(50834u, 53611u), vec2<u32>(82547u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(7791u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 57232u), vec2<u32>(4294967295u, 0u), vec2<u32>(17344u, 69088u), vec2<u32>(1u, 1977u), vec2<u32>(20103u, 16559u), vec2<u32>(43553u, 16665u), vec2<u32>(57180u, 20162u), vec2<u32>(4294967295u, 27972u), vec2<u32>(1u, 48601u));

var<private> global1: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    global0 = array<vec2<u32>, 32>();
    var var_0 = _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -13711i, 30383i, u_input.b), vec4<i32>(u_input.b, -2147483647i, 60726i, 15054i)), firstTrailingBit(-2147483647i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, 0i), -11393i))), u_input.a);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-215f * -1000f), 814f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(548f - -779f))))), vec4<bool>(u_input.a.x != -countOneBits(-1i), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1413f, -385f, 663f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 286f, -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-987f, 666f, -622f) + vec3<f32>(330f, 685f, 2308f)))))));
    let var_2 = 22470u;
    let var_3 = -544f;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3)));
}

fn func_2() -> f32 {
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    let var_0 = _wgslsmith_div_i32(countOneBits(_wgslsmith_add_i32(u_input.b, -_wgslsmith_sub_i32(u_input.a.x, -2147483647i))), ~(-48475i));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-234f, 1000f, -599f) * vec3<f32>(-1476f, 1257f, -2465f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, 541f, -355f) - vec3<f32>(-580f, -1123f, 1794f)))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(319f * 1316f), -161f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1837f)), _wgslsmith_div_f32(644f, 1161f)))), 2064f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -972f) * -1289f))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(449f, 401f, -600f, 630f)))) - vec4<f32>(_wgslsmith_f_op_f32(select(-427f, 458f, true)), 288f, _wgslsmith_f_op_f32(f32(-1f) * -1173f), -1645f)), select(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, select(true, true, any(vec3<bool>(true, false, false)))), vec4<bool>(true, true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)), any(vec4<bool>(false, true, false, true)) && false), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), var_1.x), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1004f, 1736f) * vec3<f32>(728f, -896f, 778f)), vec3<f32>(-529f, -119f, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 825f, 158f) - vec3<f32>(1003f, 948f, 474f)))))));
    return var_1.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(552f, 132f))) + -901f), 1f, _wgslsmith_f_op_f32(815f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), 1000f), vec4<bool>(all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), u_input.b <= 1i, _wgslsmith_mult_u32(8975u, 0u) == select(4294967295u, reverseBits(42702u), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1391f, -2344f, -906f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1444f, -742f, -649f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-118f, var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_f_op_f32(select(-1000f, -428f, var_0.b.x)), _wgslsmith_f_op_f32(var_0.c.x * 316f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(673f, -450f, 1801f, var_0.c.x)) * vec4<f32>(683f, var_0.c.x, 1031f, var_0.c.x)))), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1427f, var_0.a.x)), -388f, var_0.a.x));
    return StorageBuffer(var_0.a.x, vec2<u32>(max(_wgslsmith_clamp_u32(select(1u, 4294967295u, var_1.b.x), _wgslsmith_div_u32(11971u, 1u), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(67684u, 36360u, 72286u), vec3<u32>(4294967295u, 15678u, 47463u)) << (max(11986u, 2742u) % 32u)), max(32542u, 4294967295u)), vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4826u), ~vec2<u32>(4294967295u, 1u))), 0u, 3059u), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, 1i), u_input.a.x), _wgslsmith_div_i32(1i, u_input.a.x & -9265i)) & countOneBits(u_input.b), firstLeadingBit(reverseBits(-28512i) ^ -u_input.b) << (36199u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~global0[_wgslsmith_index_u32(select(~4799u, _wgslsmith_mult_u32(4294967295u, 1u), true), 32u)]));
    let var_1 = all(vec2<bool>(true, any(vec3<bool>(select(true, true, false), true, true))));
    global0 = array<vec2<u32>, 32>();
    let x = u_input.a;
    s_output = func_1();
}

