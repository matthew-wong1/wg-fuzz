struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 5> = array<i32, 5>(i32(-2147483648), -12648i, -1i, -1i, 35920i);

var<private> global2: array<Struct_3, 24>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = arg_2.a.x;
    var var_1 = arg_2.a.x;
    let var_2 = arg_2.c;
    var var_3 = ~(~(~min(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_2.d), arg_1.a.a.zy, arg_1.a.a.yw), ~vec2<u32>(0u, arg_1.b))));
    var_3 = vec2<u32>(~var_3.x, 0u);
    return vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, var_3.x), arg_1.a.a.x), ((~var_2.a.x ^ 0u) << (0u % 32u)) | arg_2.d);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = firstTrailingBit(global1[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(~arg_0.x, firstLeadingBit(arg_0.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_3.a.zx, arg_0.yz), 0u)) << (~_wgslsmith_mod_u32(arg_3.a.x ^ 1u, 1u) % 32u), 5u)]);
    var var_0 = Struct_1(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 1u, 60694u, arg_3.a.x), vec4<u32>(arg_0.x, arg_0.x, 0u, 1u), vec4<u32>(32820u, 6648u, 4294967295u, arg_0.x)), _wgslsmith_mod_vec4_u32(arg_0, arg_0), firstLeadingBit(arg_0)), arg_3.a, select(vec4<bool>(false, arg_2, arg_2, arg_2), !vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, true, true, arg_2))) << (arg_0 % vec4<u32>(32u)));
    global1 = array<i32, 5>();
    var var_1 = arg_3;
    global0 = abs(global1[_wgslsmith_index_u32(arg_0.x, 5u)]);
    return _wgslsmith_f_op_f32(685f - 2002f);
}

fn func_2() -> u32 {
    global1 = array<i32, 5>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, 4294967295u, 22618u, 4294967295u), 16462i, false, Struct_1(vec4<u32>(6026u, 5254u, 4294967295u, 0u)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1000f, -243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f)));
    var var_1 = select(all(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), all(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, select(false, true, true)))), true);
    var_1 = true;
    var var_2 = Struct_1(~(~(~max(vec4<u32>(0u, 35517u, 4294967295u, 69827u), vec4<u32>(10787u, 4294967295u, 0u, 4294967295u)))));
    return ~(~(~min(~15314u, firstTrailingBit(41969u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~global1[_wgslsmith_index_u32(4294967295u, 5u)], u_input.a.x, ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(2869i, global1[_wgslsmith_index_u32(17256u, 5u)] << (11547u % 32u)), global1[_wgslsmith_index_u32(11425u, 5u)], ~(-global1[_wgslsmith_index_u32(1u, 5u)])), u_input.a.x);
    var var_1 = vec2<u32>(~(~countOneBits(~6320u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(~5826u, _wgslsmith_dot_vec2_u32(~vec2<u32>(48900u, 6491u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 75271u), vec2<u32>(4294967295u, 1u)))), ~12169u));
    let var_2 = select(vec3<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(step(773f, -210f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-771f, 885f))), all(vec4<bool>(true, true, true, true))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), var_1.x > 0u), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)), true);
    let var_3 = Struct_2(Struct_1(select(vec4<u32>(1u, 348u, 28001u, var_1.x) & vec4<u32>(var_1.x, var_1.x, var_1.x, 1u), abs(vec4<u32>(1u, var_1.x, 26596u, var_1.x)), !var_2.x) ^ (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 1u, 1u, 109839u), vec4<u32>(1u, 0u, 19219u, 1u)) & vec4<u32>(var_1.x, var_1.x, var_1.x, 1u))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_1.x, 0u), 1u), vec2<u32>(min(var_1.x, var_1.x), ~var_1.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(38357u, 1u), vec2<u32>(69737u, var_1.x), var_2.yx), func_1(vec4<f32>(1745f, 186f, 1000f, 1054f), Struct_2(Struct_1(vec4<u32>(0u, var_1.x, 4737u, 0u)), 0u, var_2.zz), global2[_wgslsmith_index_u32(3918u, 24u)])), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(101592u, 44403u)))), !var_2.zx);
    let var_4 = Struct_2(var_3.a, ~_wgslsmith_mult_u32(~(~var_1.x), ~func_2()), select(!var_3.c, vec2<bool>(var_3.c.x | true, true), vec2<bool>(var_2.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(61946u, 0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(select(var_4.a.a.x, var_4.b, false), var_3.a.a.x), abs(~4294967295u), var_3.b)), 14786u, 1i, -(~min(var_0.www, vec3<i32>(-2147483647i, 2147483647i, -40437i))));
}

