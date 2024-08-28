struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 4>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    let var_0 = global0.b.b;
    global0 = Struct_2(global0.a, Struct_1(global0.b.c.x, _wgslsmith_div_i32(1i, -7180i), ~vec2<u32>(abs(u_input.a.x), u_input.e.x), countOneBits(select(vec4<i32>(arg_2.d.x, 1i, global1[_wgslsmith_index_u32(4294967295u, 4u)], -5545i) | arg_2.d, vec4<i32>(global0.b.b, arg_2.b, 26667i, 27873i) & vec4<i32>(u_input.c.x, global0.b.d.x, -3873i, global0.b.b), arg_0))));
    global1 = array<i32, 4>();
    let var_1 = Struct_2(false, global0.b);
    var var_2 = true;
    return 0u;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec4<i32> {
    global1 = array<i32, 4>();
    let var_0 = !arg_0;
    var var_1 = global0.b;
    let var_2 = vec2<bool>(true, any(select(var_0.yz, select(!var_0.xz, vec2<bool>(global0.a, var_0.x), true), select(select(vec2<bool>(global0.a, var_0.x), var_0.zz, vec2<bool>(arg_0.x, arg_0.x)), vec2<bool>(true, true), !vec2<bool>(global0.a, false)))));
    global0 = Struct_2(~global0.b.c.x > (19133u | countOneBits(func_2(true, global0.a, global0.b, vec2<f32>(1119f, 1141f)))), Struct_1(func_2(false, var_0.x, Struct_1(29643u, countOneBits(0i), vec2<u32>(37553u, 7627u), ~global0.b.d), vec2<f32>(1179f, _wgslsmith_f_op_f32(floor(1090f)))), countOneBits(~(~(-18365i))), ~vec2<u32>(~577u, u_input.e.x), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global0.b.d.x, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(var_1.c.x, 4u)], global0.b.d.x, arg_1.x, var_1.b), -arg_1), reverseBits(-vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(1u, 4u)], global0.b.d.x, global0.b.b)))));
    return _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(-(~var_1.d)), ~firstTrailingBit(abs(vec4<i32>(var_1.b, 1i, 15706i, 1i)))), var_1.d);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> vec2<u32> {
    global1 = array<i32, 4>();
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_div_u32(reverseBits(_wgslsmith_mod_u32(71606u, func_2(true, false, Struct_1(arg_1.b.a, arg_0.b.b, var_0.b.c, vec4<i32>(global0.b.b, var_0.b.d.x, 1i, -2147483647i)), vec2<f32>(159f, 621f)))), ~u_input.e.x), u_input.d.x, vec2<u32>(4294967295u, 1u), ~func_3(vec3<bool>(true, !arg_1.a, select(arg_1.a, arg_1.a, false)), var_0.b.d));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f), 1049f)), -565f)));
    var_2 = -1403f;
    return ~firstTrailingBit(vec2<u32>(~var_1.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(34525u, var_0.b.a), ~vec2<u32>(1u, u_input.e.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = max(max(~vec4<u32>(abs(global0.b.c.x), _wgslsmith_div_u32(18339u, 83638u), u_input.a.x, _wgslsmith_add_u32(global0.b.c.x, 0u)), ~vec4<u32>(_wgslsmith_mult_u32(arg_0.x, u_input.e.x), func_2(global0.a, arg_2.a, Struct_1(u_input.a.x, arg_2.b.b, arg_2.b.c, global0.b.d), vec2<f32>(205f, 1000f)), global0.b.a, _wgslsmith_add_u32(0u, global0.b.c.x))), vec4<u32>(arg_2.b.c.x, 4294967295u, 1u, 51805u));
    global1 = array<i32, 4>();
    var_0 = vec4<u32>(10910u, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.x, 0u), 1u)), ~func_2(!global0.a, true, Struct_1(55223u, 0i, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_2.b.a), vec2<u32>(global0.b.c.x, u_input.e.x)), -vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 4u)], global0.b.b, arg_1.b.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, 1040f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(643f, -1168f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~35421u << (~u_input.a.x % 32u), _wgslsmith_mult_u32(2815u, arg_2.b.a), select(_wgslsmith_dot_vec3_u32(vec3<u32>(15942u, var_0.x, 42771u), vec3<u32>(u_input.a.x, 4294967295u, var_0.x)), arg_2.b.a, true)), select(var_0.zyx, ~(vec3<u32>(0u, 38419u, u_input.a.x) << (var_0.wxw % vec3<u32>(32u))), select(vec3<bool>(arg_3, false, true), !vec3<bool>(false, arg_2.a, true), true))));
    let var_1 = vec4<bool>(select(any(!vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), !all(vec3<bool>(true, true, true)), any(vec2<bool>(true, all(vec2<bool>(arg_2.a, false))))), all(select(!select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3)), vec2<bool>(true, true), !(!vec2<bool>(false, global0.a)))), (_wgslsmith_div_u32(~var_0.x, select(1u, arg_1.b.a, false)) == _wgslsmith_div_u32(~30753u, _wgslsmith_dot_vec2_u32(arg_2.b.c, u_input.e.xx))) || arg_3, any(select(!vec4<bool>(true, true, arg_2.a, arg_2.a), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, arg_1.a, arg_3), vec4<bool>(arg_2.a, true, false, global0.a)), vec4<bool>(all(vec2<bool>(global0.a, false)), all(vec3<bool>(arg_1.a, false, arg_2.a)), any(vec2<bool>(false, arg_1.a)), true))));
    global1 = array<i32, 4>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    global0 = func_4(vec3<u32>(~(~_wgslsmith_div_u32(1u, global0.b.a)), ((1u << (global0.b.c.x % 32u)) ^ (global0.b.a >> (u_input.a.x % 32u))) >> (~max(44967u, u_input.a.x) % 32u), _wgslsmith_dot_vec2_u32(~func_1(Struct_2(false, global0.b), Struct_2(global0.a, global0.b)), ~_wgslsmith_div_vec2_u32(vec2<u32>(120252u, 4294967295u), global0.b.c))), Struct_2(all(select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a), global0.a), select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a), global0.a), !global0.a)), Struct_1(0u, ~_wgslsmith_clamp_i32(u_input.c.x, u_input.b, 42634i), global0.b.c, -global0.b.d)), Struct_2(true, Struct_1(~(~u_input.e.x), ~53403i, _wgslsmith_sub_vec2_u32(u_input.a.zx | global0.b.c, _wgslsmith_mod_vec2_u32(global0.b.c, vec2<u32>(global0.b.a, 4294967295u))), -global0.b.d)), !global0.a);
    var var_1 = Struct_2(!any(select(vec4<bool>(true, global0.a, global0.a, global0.a), !vec4<bool>(true, false, global0.a, global0.a), !vec4<bool>(true, true, true, global0.a))), Struct_1(global0.b.c.x, _wgslsmith_dot_vec2_i32(-u_input.d, vec2<i32>(global0.b.d.x, global0.b.d.x)) | global1[_wgslsmith_index_u32(~(global0.b.a | global0.b.a), 4u)], vec2<u32>(max(~1u, func_1(Struct_2(false, global0.b), Struct_2(true, Struct_1(global0.b.c.x, global1[_wgslsmith_index_u32(global0.b.c.x, 4u)], vec2<u32>(4294967295u, global0.b.a), vec4<i32>(0i, 26360i, u_input.b, 5982i)))).x), ~_wgslsmith_add_u32(global0.b.c.x, u_input.e.x)), firstTrailingBit(global0.b.d)));
    var var_2 = var_1.b;
    var var_3 = -180f;
    var_3 = _wgslsmith_f_op_f32(780f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-778f)) * _wgslsmith_f_op_f32(ceil(1676f))))) + 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(522f, _wgslsmith_mod_u32(~func_1(func_4(vec3<u32>(18159u, var_1.b.a, 1u), Struct_2(false, global0.b), Struct_2(var_1.a, Struct_1(global0.b.c.x, 31923i, vec2<u32>(28028u, var_2.a), var_1.b.d)), var_1.a), Struct_2(true, Struct_1(var_1.b.c.x, global1[_wgslsmith_index_u32(1u, 4u)], vec2<u32>(116784u, 4294967295u), var_2.d))).x, var_2.c.x << (0u % 32u)), -reverseBits(abs(-var_2.d)), global0.b.d);
}

