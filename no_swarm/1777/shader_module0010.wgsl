struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: vec2<u32> = vec2<u32>(54095u, 0u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> Struct_1 {
    var var_0 = select(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i) >> ((vec3<u32>(u_input.b, 0u, 0u) >> (vec3<u32>(global1.x, 4294967295u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_i32(vec3<i32>(8037i, 0i, -16028i), vec3<i32>(-2147483647i, 24099i, -1i))), -countOneBits(vec3<i32>(abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(36194i, -19664i), vec2<i32>(-1i, -58027i)), 1i)), false);
    global1 = reverseBits(vec2<u32>(13648u << (0u % 32u), ~(~global1.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1737f);
    global1 = u_input.d;
    var var_2 = -741f;
    return Struct_1(vec3<i32>(-1i, var_0.x, var_0.x));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>) -> f32 {
    global0 = array<Struct_1, 25>();
    var var_0 = -1000f;
    let var_1 = any(vec4<bool>(true, true, true, true));
    var var_2 = func_1();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - arg_0.x) * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-346f - -1481f), _wgslsmith_f_op_f32(-arg_0.x))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_1(arg_2.a);
    let var_1 = Struct_1(countOneBits(~(~arg_1.a)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)), -881f) * 189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-472f, -1059f, -1378f, 1014f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1206f, 1455f, -1000f, 492f) * vec4<f32>(-1018f, 1098f, 1000f, -546f)))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a.x, var_0.a.x, 21548i, var_1.a.x), vec4<i32>(var_1.a.x, 0i, var_1.a.x, 0i)), -vec4<i32>(var_0.a.x, var_0.a.x, 27164i, -2147483647i))))), _wgslsmith_f_op_f32(450f * -487f));
    var var_3 = 0i;
    global1 = countOneBits(vec2<u32>(_wgslsmith_div_u32(22018u, ~global1.x), global1.x) | arg_0.xx);
    return all(vec2<bool>(!all(vec4<bool>(true, true, false, true)) & true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_1.a.x >= -1i))));
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    global1 = abs(vec2<u32>(countOneBits(reverseBits(reverseBits(9684u))), 0u));
    let var_0 = global0[_wgslsmith_index_u32((1u << (select(_wgslsmith_clamp_u32(global1.x, ~global1.x, 1u), select(_wgslsmith_add_u32(global1.x, u_input.a), firstTrailingBit(6611u), all(vec2<bool>(arg_1, arg_1))), false) % 32u)) | ~firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(global1.x, global1.x), u_input.c & 23853u)), 25u)];
    var var_1 = vec2<bool>(true, any(select(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, false, arg_1, true), vec4<bool>(arg_1, true, true, false)), vec4<bool>(true, false, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, false, true, arg_1), arg_1))) || false);
    var var_2 = arg_1;
    global1 = vec2<u32>(u_input.b, ~83307u);
    return Struct_1(vec3<i32>(var_0.a.x, -39044i, _wgslsmith_dot_vec2_i32(var_0.a.zx, _wgslsmith_sub_vec2_i32(-vec2<i32>(43480i, var_0.a.x), vec2<i32>(var_0.a.x, var_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(24834i, 2147483647i);
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1441f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(261f, 1000f))))), !func_2(~vec4<u32>(4294967295u, 4294967295u, 6476u, 60261u), func_1(), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(5181u, global1.x), 25u)], ~vec3<u32>(u_input.c, 23288u, global1.x)) & true);
    let var_2 = Struct_1(var_1.a);
    global1 = u_input.d;
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u, ~(max(u_input.b, u_input.c) | ~5407u)));
}

