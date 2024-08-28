struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 32>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> vec2<bool> {
    global0 = arg_0;
    var var_0 = arg_0.a.x < arg_0.b;
    let var_1 = 93540u;
    global0 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x) + _wgslsmith_f_op_vec2_f32(abs(arg_0.a)))), 1f);
    return select(vec2<bool>(!global2.x, !((arg_2 & arg_2) <= (arg_2 & arg_2))), select(!(!select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, global2.x), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(global2.x, false), select(select(vec2<bool>(true, false), vec2<bool>(true, global2.x), true), !vec2<bool>(global2.x, false), vec2<bool>(true, true))), select(vec2<bool>(arg_1.x > 14126i, !global2.x), !vec2<bool>(global2.x, true), !vec2<bool>(global2.x, global2.x))), vec2<bool>(true, global2.x));
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global2 = select(select(!select(vec2<bool>(true, global2.x), func_3(Struct_1(arg_0, 367f), vec4<i32>(-2147483647i, 0i, 1i, 0i), 757u), !global2.x), vec2<bool>(true, all(select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x), true))), !select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, true), !vec2<bool>(global2.x, global2.x))), !(!select(func_3(global1[_wgslsmith_index_u32(1u, 32u)], vec4<i32>(-1i, -15594i, -20909i, u_input.a), 50927u), vec2<bool>(false, global2.x), true)), vec2<bool>(!global2.x, false));
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.b), _wgslsmith_div_f32(882f, 1077f));
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -11965i), vec3<i32>(u_input.a, 0i, u_input.a)), vec3<i32>(u_input.a, u_input.a, -1i)), vec3<i32>(-1i, u_input.a, -2147483647i) << (vec3<u32>(56343u, 9643u, 74385u) % vec3<u32>(32u))) >> (max(~(~9557u), _wgslsmith_mult_u32(1u, 1u)) % 32u), -(~u_input.a) << (~4294967295u % 32u), 24303i, u_input.a);
    return var_0.x;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 883f;
    global1 = array<Struct_1, 32>();
    let var_1 = vec4<i32>(-6007i, firstTrailingBit(((arg_0 ^ arg_2.x) ^ 2147483647i) | ~_wgslsmith_mod_i32(arg_0, -1i)), func_2(_wgslsmith_f_op_vec2_f32(-global0.a)), abs(arg_0));
    let var_2 = arg_3.a;
    var var_3 = abs(firstTrailingBit(~countOneBits(~vec3<u32>(0u, 0u, 1446u))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 4532u), ~var_3.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, select(var_3.x, 52058u, false)), ~vec2<u32>(239u, var_3.x)), _wgslsmith_div_u32(0u, var_3.x)), vec3<u32>(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 1u), var_3.yz)), ~95696u), _wgslsmith_mod_u32(1u, countOneBits(_wgslsmith_sub_u32(20062u, 0u))), var_3.x)), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 75462u;
    var var_1 = func_1(countOneBits(0i), min(-64850i ^ _wgslsmith_add_i32(countOneBits(-2417i), u_input.a), u_input.a), select(vec2<i32>(4706i, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(-18261i), firstTrailingBit(u_input.a)), -vec2<i32>(u_input.a, -2147483647i)), !select(select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), true), !vec2<bool>(global2.x, global2.x), var_0 != var_0)), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b, global0.a.x), vec2<f32>(global0.b, global0.b)), _wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(-896f, global0.a.x)))), _wgslsmith_f_op_vec2_f32(-global0.a))), -1264f));
    var var_2 = ~u_input.a;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global0.a)) * vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.b)), _wgslsmith_div_f32(_wgslsmith_div_f32(863f, -1000f), _wgslsmith_f_op_f32(var_1.b + global0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -781f));
    var var_3 = ~reverseBits(u_input.a);
    let var_4 = 1u;
    let var_5 = vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-1000f + -1287f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * var_1.b))));
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(15868u, 329u, var_4, 51454u)), firstLeadingBit(vec4<u32>(var_4, var_4, 25098u, 1u)))), ~(~var_0)), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(((vec3<u32>(var_0, 0u, var_0) & vec3<u32>(4294967295u, 2535u, var_4)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(var_4, 40862u, var_0), vec3<u32>(4294967295u, var_0, 1u), vec3<u32>(0u, 81677u, var_4))) & ~vec3<u32>(10744u, var_4, 0u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_4, 42420u, 4294967295u), min(vec3<u32>(101089u, 4294967295u, 40742u), vec3<u32>(1u, 1u, 7047u)), ~vec3<u32>(var_0, 0u, var_4))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, global0.a.x, -1000f, -1937f), vec4<f32>(3347f, global0.a.x, var_5.x, var_5.x), true)))))));
}

