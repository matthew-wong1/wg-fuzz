struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(65757u, 11317u, 4294967295u, 7377u), vec4<u32>(0u, 1u, 12665u, 21241u), vec4<u32>(32551u, 0u, 57762u, 29608u), vec4<u32>(1u, 19161u, 79281u, 106588u), vec4<u32>(0u, 21801u, 4294967295u, 4294967295u), vec4<u32>(0u, 21476u, 21975u, 0u), vec4<u32>(66678u, 36988u, 39119u, 4294967295u), vec4<u32>(71570u, 67494u, 1u, 24945u), vec4<u32>(4207u, 0u, 47218u, 0u), vec4<u32>(43460u, 48810u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 2224u, 66109u, 103859u), vec4<u32>(32025u, 4979u, 4294967295u, 29255u), vec4<u32>(29098u, 0u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 90660u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(3248u, 26874u, 20282u, 11613u), vec4<u32>(3985u, 49771u, 0u, 4294967295u), vec4<u32>(65656u, 4839u, 0u, 0u), vec4<u32>(41163u, 1u, 0u, 27505u), vec4<u32>(4294967295u, 1u, 69023u, 0u), vec4<u32>(1u, 4294967295u, 42603u, 23107u), vec4<u32>(1u, 32907u, 20714u, 42631u), vec4<u32>(0u, 0u, 1u, 15083u), vec4<u32>(0u, 34011u, 41084u, 23354u), vec4<u32>(32379u, 21096u, 4294967295u, 1u), vec4<u32>(4294967295u, 42837u, 4294967295u, 4294967295u), vec4<u32>(1u, 19050u, 31867u, 48517u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = ~firstTrailingBit(~25727u);
    var var_1 = Struct_1(~vec4<u32>(0u, 1u, ~(~40415u), 1u), vec3<u32>(1u, 1u, 1u), select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), !vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, true), !vec4<bool>(all(vec4<bool>(false, false, false, false)), true, all(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, true, false, true)))));
    var_0 = 42958u;
    let var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(firstTrailingBit(34336u) << (var_1.b.x % 32u), firstTrailingBit(88802u), _wgslsmith_mod_u32(var_1.a.x, 0u), _wgslsmith_dot_vec3_u32(var_1.a.zww, var_1.a.wwy | var_1.b)), global0[_wgslsmith_index_u32(var_1.a.x, 30u)], firstLeadingBit(abs(var_1.a)));
    var var_3 = select(all(vec3<bool>(true, true, true)), true, !var_1.c.x) || false;
    return vec2<bool>(any(var_1.c), true & any(var_1.c.yw));
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<u32>, 30>();
    global0 = array<vec4<u32>, 30>();
    let var_0 = true;
    let var_1 = any(func_3());
    global0 = array<vec4<u32>, 30>();
    return Struct_2(select(!select(select(vec4<bool>(true, var_1, var_0, var_0), vec4<bool>(true, var_1, false, var_1), var_0), vec4<bool>(var_1, var_1, var_0, true), !var_1), select(select(!vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_1, var_0, true), !vec4<bool>(var_0, false, var_1, false)), !select(vec4<bool>(false, var_1, var_1, true), vec4<bool>(true, var_0, var_0, false), var_1), select(select(vec4<bool>(false, var_1, false, var_1), vec4<bool>(true, var_1, true, var_0), var_0), vec4<bool>(false, true, var_0, var_0), true)), select(select(select(vec4<bool>(var_0, false, false, false), vec4<bool>(true, false, false, var_1), vec4<bool>(var_0, var_1, var_1, false)), vec4<bool>(true, var_1, var_1, var_0), true), select(vec4<bool>(true, true, var_1, var_1), !vec4<bool>(false, var_0, var_0, var_1), select(vec4<bool>(var_0, true, var_1, var_1), vec4<bool>(false, true, var_1, true), vec4<bool>(true, var_0, var_0, var_1))), true)));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_2();
    let var_1 = Struct_3(var_0.a.yx, Struct_2(select(vec4<bool>(false, false, all(vec2<bool>(false, var_0.a.x)), true), select(vec4<bool>(var_0.a.x, false, var_0.a.x, true), func_2().a, all(var_0.a.zwy)), var_0.a)), _wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(abs(abs(4294967295u)), abs(_wgslsmith_mod_u32(38766u, 23064u)), 1u)), u_input.a.x >> (1u % 32u), _wgslsmith_mod_i32(-865i, u_input.a.x));
    var var_2 = -countOneBits(min(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-73429i, -2149i)), -39350i, firstTrailingBit(var_1.d)), vec3<i32>(u_input.a.x, 1i, min(1i, -2147483647i))));
    var var_3 = vec4<i32>(-1i, var_2.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(~var_2.x, _wgslsmith_mult_i32(-u_input.a.x, i32(-1i) * -10563i)), u_input.a.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d, -38695i), vec2<i32>(38438i, u_input.a.x)), ~var_2.x, 1i), min(abs(vec3<i32>(17984i, 30195i, var_2.x)), vec3<i32>(0i, 44961i, 17957i) & vec3<i32>(u_input.a.x, 20386i, -40680i))));
    var var_4 = var_1;
    return var_4.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(select(10937u, ~firstLeadingBit(62898u), (all(vec3<bool>(true, true, true)) & false) | !select(true, true, true)), 30u)];
    global0 = array<vec4<u32>, 30>();
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(4294967295u, 30u)] | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(var_0.x) >> (7057u % 32u), select(min(72560u, 3262u), ~15879u, true)), 30u)], select(vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 57904u, 4294967295u), var_0.xxw) & (4294967295u << (0u % 32u)), _wgslsmith_div_u32(8619u, 38710u)), func_1(), vec3<bool>(any(vec2<bool>(true, true)), false, true)), vec4<bool>(true, any(vec2<bool>(true, func_3().x)), false, !(u_input.a.x > firstTrailingBit(u_input.a.x))));
    global0 = array<vec4<u32>, 30>();
    var var_2 = vec2<bool>(func_1().x > 0u, var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-740f, 201f), vec2<f32>(-1504f, -1884f), var_1.c.wz))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(647f, -462f) + vec2<f32>(331f, 936f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(824f, 582f), vec2<f32>(330f, -1631f), vec2<bool>(var_2.x, false)))))))));
}

