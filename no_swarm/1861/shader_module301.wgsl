struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 20429i, -1i, -1i);

var<private> global1: array<vec2<bool>, 18>;

var<private> global2: array<Struct_2, 7>;

var<private> global3: i32;

var<private> global4: vec3<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(any(global1[_wgslsmith_index_u32(28060u, 18u)]));
    global3 = _wgslsmith_dot_vec3_i32(-min(global0.zyz, global0.zyz) >> (~vec3<u32>(4294967295u, 1u, 25809u) % vec3<u32>(32u)), vec3<i32>(global0.x, ~(~global0.x), global0.x)) & abs(_wgslsmith_mod_i32(abs(-33983i), -6812i));
    var var_1 = Struct_1(any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), var_0.a), vec3<bool>(true, true, true), !vec3<bool>(var_0.a, false, false))));
    global0 = max(max(~(~vec4<i32>(2887i, u_input.a, u_input.a, u_input.a) | (vec4<i32>(2147483647i, -19318i, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, global0.x, -4873i))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(global0.wzw, vec3<i32>(-1i, u_input.a, global0.x)), u_input.a, 0i, ~global0.x), reverseBits(vec4<i32>(u_input.a, u_input.a, global0.x, global0.x)) ^ vec4<i32>(1i, 18321i, 12005i, global0.x))), -(~select(vec4<i32>(u_input.a, global0.x, u_input.a, global0.x), vec4<i32>(global0.x, global0.x, global0.x, 2147483647i), vec4<bool>(var_0.a, var_1.a, false, true)) & -min(vec4<i32>(global0.x, 1i, 2147483647i, -9124i), vec4<i32>(-2147483647i, 0i, global0.x, global0.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(426f)), _wgslsmith_f_op_f32(-2185f + global4.x), global4.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2504f, -1077f, -1000f))))) * vec3<f32>(-1661f, -423f, _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(global4.x + 377f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global4.x * global4.x)), _wgslsmith_f_op_f32(f32(-1f) * -1186f), -1000f))));
    return global4.yz;
}

fn func_2(arg_0: i32) -> vec4<u32> {
    global3 = ~60710i;
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.yy)))), vec2<f32>(-1460f, -1039f))), _wgslsmith_f_op_vec2_f32(func_3())));
    var var_1 = Struct_1((true || ((arg_0 & 2147483647i) <= 13213i)) | true);
    let var_2 = _wgslsmith_f_op_f32(-global4.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2)));
    return _wgslsmith_mod_vec4_u32((vec4<u32>(4294967295u, 60449u, 41644u, _wgslsmith_dot_vec2_u32(vec2<u32>(94493u, 0u), vec2<u32>(2113u, 23009u))) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(1u, 54336u, 5657u, 5808u), vec4<u32>(0u, 0u, 44828u, 15265u), vec4<bool>(var_1.a, true, var_1.a, var_1.a)))) ^ ~firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_1() -> Struct_2 {
    global3 = -global0.x;
    let var_0 = !global1[_wgslsmith_index_u32(0u ^ firstTrailingBit(~0u), 18u)];
    var var_1 = countOneBits(global0.x << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(8301u, 32734u), min(vec2<u32>(7918u, 65991u), vec2<u32>(18135u, 9131u))), ~firstTrailingBit(0u)) % 32u));
    global0 = (vec4<i32>(select(-global0.x, abs(34713i), true), -1i, 0i, 42628i) << ((func_2(global0.x) << (vec4<u32>(1u, 1u, 4294967295u, _wgslsmith_sub_u32(1u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (abs(vec4<u32>(35298u, firstTrailingBit(~4294967295u), max(61890u, 47921u), ~(~4294967295u))) % vec4<u32>(32u));
    global3 = countOneBits(-2147483647i);
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~(~firstLeadingBit(vec4<u32>(4381u, 0u, 28283u, 4294967295u))), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(0u), firstTrailingBit(4294967295u), 75190u, ~106741u), vec4<u32>(1u, 1u, 1u, 1u))), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2496f, global4.x, _wgslsmith_div_f32(1000f, 442f)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -162f, global4.x) * vec3<f32>(global4.x, 1987f, 544f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-136f, 990f, 1647f) * vec3<f32>(-246f, global4.x, global4.x)))))));
    let var_0 = vec3<i32>(-20055i, abs(global0.x), global0.x);
    var var_1 = func_1();
    var var_2 = ~(-vec3<i32>(~1i | firstLeadingBit(global0.x), u_input.a, var_0.x));
    var var_3 = Struct_1(var_1.a.a);
    let var_4 = _wgslsmith_mod_u32(~(~60694u), abs(~(~(~42226u))));
    var var_5 = var_4;
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(44830u, 606u, var_4, var_4), ~vec4<u32>(var_4, 75310u, 1u, 1u), vec4<u32>(var_4, 0u, var_4, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_4, var_4, 115181u) >> (vec4<u32>(var_4, 17943u, 6852u, 24352u) % vec4<u32>(32u)), vec4<u32>(var_4, var_4, 30614u, var_4)))), vec4<u32>(~(~1u), var_4, _wgslsmith_mult_u32(abs(1u), var_4 & 1u), var_4) & vec4<u32>(firstLeadingBit(~var_4), ~25494u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4, 0u, 41395u), vec3<u32>(var_4, 35170u, 4294967295u)), var_4, min(var_4, var_4)), 1u));
}

