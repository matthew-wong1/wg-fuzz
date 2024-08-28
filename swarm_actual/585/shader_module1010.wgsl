struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec4<bool>(false, false, false, false), -37244i), Struct_3(vec4<bool>(false, false, true, true), 0i), Struct_3(vec4<bool>(true, true, true, false), 1i), Struct_3(vec4<bool>(false, true, true, true), -61241i), Struct_3(vec4<bool>(true, true, false, false), 2147483647i), Struct_3(vec4<bool>(true, false, true, false), 0i));

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(vec4<i32>(global1.b, firstLeadingBit(reverseBits(0i)) ^ -global1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(global1.b), global1.b ^ global1.b, global1.b), vec3<i32>(-u_input.a, global1.b >> (4294967295u % 32u), firstLeadingBit(0i))), global1.b), abs(25175u));
    var var_1 = Struct_1(vec4<i32>(-48259i, -var_0.a.x, -12285i, -_wgslsmith_sub_i32(global1.b, -2147483647i | var_0.a.x)), 0u);
    global0 = array<Struct_3, 6>();
    global2 = array<Struct_3, 31>();
    let var_2 = var_0.a.x;
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    let var_0 = ~_wgslsmith_sub_i32(arg_2.a.x, -1i);
    global0 = array<Struct_3, 6>();
    var var_1 = Struct_1(reverseBits(-abs(vec4<i32>(32774i, -19526i, arg_3.b, var_0))), ~(0u | _wgslsmith_div_u32(arg_0.b, 25848u)));
    global0 = array<Struct_3, 6>();
    global2 = array<Struct_3, 31>();
    return 1u;
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(81935u, 4378u), min(vec2<u32>(114202u, 11428u), vec2<u32>(100187u, 1u))), vec2<u32>(1u, 1u))), 6u)];
    let var_1 = global2[_wgslsmith_index_u32(func_4(Struct_1(min(-(vec4<i32>(u_input.a, 37442i, arg_0, u_input.a) | vec4<i32>(u_input.a, -24220i, 27397i, 1i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 29837i, -1i, arg_0), vec4<i32>(var_0.b, arg_0, 4562i, arg_0))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(23840u, _wgslsmith_mult_u32(30249u, 57542u)), reverseBits(_wgslsmith_div_u32(8490u, 15028u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, -1775f, -1047f, -2537f)))), vec4<f32>(_wgslsmith_f_op_f32(-429f - 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-315f, -1372f)), -723f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(228f)), -1000f)), 1418f)), Struct_1(~max(vec4<i32>(22631i, -2147483647i, arg_0, global1.b), func_3()), 1u), Struct_3(!global1.a, var_0.b)), 31u)];
    global2 = array<Struct_3, 31>();
    let var_2 = select(select(var_0.a.yw, vec2<bool>(all(!vec2<bool>(var_0.a.x, var_1.a.x)), any(select(vec2<bool>(false, global1.a.x), vec2<bool>(global1.a.x, global1.a.x), var_1.a.wz))), vec2<bool>(true, true)), global1.a.yx, var_0.a.x);
    global2 = array<Struct_3, 31>();
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 20777u), 31u)];
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> vec4<bool> {
    global0 = array<Struct_3, 6>();
    global1 = func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~(-10725i), -u_input.a, 32903i), arg_1), vec3<i32>(arg_1.x, _wgslsmith_mult_i32(-u_input.a, i32(-1i) * -42648i), 36982i)));
    var var_0 = any(!global1.a.wy);
    var_0 = false;
    let var_1 = global2[_wgslsmith_index_u32(min(min(firstTrailingBit(~42321u), 82865u), ~4294967295u), 31u)];
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 31>();
    var var_0 = global1.a.x;
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(13590u, ~(reverseBits(0u) << (1u % 32u)) << (_wgslsmith_mult_u32(0u, 56989u) % 32u)), 31u)];
    global1 = global2[_wgslsmith_index_u32(countOneBits((_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_sub_u32(4294967295u, 1u), reverseBits(43035u)) << (~(~43919u) % 32u)) ^ 1u), 31u)];
    global2 = array<Struct_3, 31>();
    var_0 = all(select(select(vec4<bool>(global1.a.x, true, any(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true)), any(vec2<bool>(global1.a.x, global1.a.x))), select(global1.a, !global1.a, select(vec4<bool>(false, global1.a.x, true, false), global1.a, vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))), !(!vec4<bool>(global1.a.x, false, true, global1.a.x))), select(global1.a, !func_1(global1.a.x, vec3<i32>(u_input.a, u_input.a, global1.b)), global1.a), global1.a));
    global2 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1546f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(554f, -375f)) + -989f)) - _wgslsmith_f_op_f32(f32(-1f) * -1441f)), func_4(Struct_1(min(select(vec4<i32>(-1i, -263i, u_input.a, u_input.a), vec4<i32>(39427i, u_input.a, -7770i, global1.b), global1.a), -vec4<i32>(-37441i, -1687i, global1.b, 33069i)), 1275u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(984f, -962f, 1285f, -420f))), Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, global1.b, u_input.a, global1.b)), 1u), func_2(global1.b | (34331i | global1.b))), select(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(4192i, -6468i), vec2<i32>(global1.b, global1.b)), vec2<i32>(u_input.a, -1i) >> (vec2<u32>(0u, 50716u) % vec2<u32>(32u))), min(countOneBits(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, global1.b), vec2<i32>(global1.b, global1.b))), all(!vec4<bool>(false, false, global1.a.x, global1.a.x))) & ~select(_wgslsmith_add_vec2_i32(vec2<i32>(global1.b, -25068i), vec2<i32>(u_input.a, global1.b)), countOneBits(vec2<i32>(u_input.a, 1i)), global1.a.x));
}

