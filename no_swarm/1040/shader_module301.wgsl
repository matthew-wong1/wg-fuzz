struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-44100i, 2147483647i, 1i), vec2<f32>(-839f, 723f));

var<private> global3: array<bool, 25>;

var<private> global4: array<Struct_1, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = vec4<bool>(arg_1, true, arg_1, true);
    var var_1 = max(0i, arg_0);
    let var_2 = global4[_wgslsmith_index_u32(0u, 13u)];
    var var_3 = global2.a.x;
    let var_4 = global4[_wgslsmith_index_u32(~max(~4294967295u, global0.x), 13u)];
    return global4[_wgslsmith_index_u32(1u, 13u)];
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(40111u, 25u)];
    var var_1 = Struct_1(-_wgslsmith_add_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-28948i, 10004i, u_input.c.x), global2.a), vec3<i32>(u_input.c.x, -23805i, 2147483647i), u_input.a.x <= u_input.a.x), _wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.c.x, 9526i, 1i), global2.a), arg_2.a | global2.a)), arg_2.b);
    var var_2 = _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(abs(14026u), ~22889u)), ~(~abs(~vec2<u32>(arg_1, 0u))));
    let var_3 = arg_2.b.x;
    global2 = arg_2;
    return func_2(~1i, true);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    var var_0 = ~(~vec3<i32>(min(arg_1, abs(global2.a.x)), ~select(81507i, -41518i, true), ~arg_1 & 24350i));
    let var_1 = func_3(_wgslsmith_f_op_f32(sign(212f)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(global0.x, ~1u) & u_input.a.x), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33470u, global0.x, _wgslsmith_mod_u32(~global0.x, ~u_input.a.x), select(global0.x >> (u_input.b.x % 32u), ~0u, global3[_wgslsmith_index_u32(1u, 25u)])), vec4<u32>(4294967295u, global0.x, ~min(global0.x, global0.x), u_input.a.x)), 13u)]);
    global4 = array<Struct_1, 13>();
    global4 = array<Struct_1, 13>();
    return vec4<i32>(_wgslsmith_sub_i32(var_0.x, countOneBits(-22424i)), -22615i, ~(-2147483647i), _wgslsmith_mult_i32(u_input.c.x, select(func_3(var_1.b.x, global0.x, global4[_wgslsmith_index_u32(53340u, 13u)]).a.x, ~u_input.c.x, global3[_wgslsmith_index_u32(u_input.a.x << (global0.x % 32u), 25u)]) << (93342u % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(countOneBits(abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, -27172i, arg_0.a.x) << (vec3<u32>(global0.x, global0.x, u_input.b.x) % vec3<u32>(32u)), arg_2.a))), _wgslsmith_div_vec2_f32(vec2<f32>(-357f, global2.b.x), arg_0.b));
    var var_1 = func_2(2147483647i, false);
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(~func_2(_wgslsmith_sub_i32(-12099i, 45107i), !global3[_wgslsmith_index_u32(u_input.a.x, 25u)]).a.x, _wgslsmith_mult_i32(-_wgslsmith_mult_i32(arg_2.a.x, arg_2.a.x), 1i), ~(~arg_1), var_0.a.x), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(arg_2.a.x, global2.a.x, global2.a.x, 1i)), func_4(func_3(-174f, global0.x, var_0), -var_1.a.x)) >> ((_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 0u, global0.x, global0.x), vec4<u32>(193u, 0u, 87361u, u_input.a.x), true), vec4<u32>(u_input.d.x, 10215u, global0.x, 37622u)) ^ (~vec4<u32>(50496u, global0.x, 4294967295u, global0.x) | _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 39997u, 0u, global0.x), vec4<u32>(14582u, u_input.b.x, u_input.a.x, 1u)))) % vec4<u32>(32u)));
    var_1 = arg_0;
    var var_3 = firstTrailingBit(max(u_input.b, reverseBits(vec3<u32>(4294967295u, ~24875u, global0.x))));
    return vec4<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_3.yx, _wgslsmith_sub_vec2_u32(var_3.zy, var_3.xz)), ~93359u) >> (~firstLeadingBit(~u_input.b.x) % 32u), global0.x, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], true)))));
    var var_1 = global4[_wgslsmith_index_u32(35616u, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, func_1(global4[_wgslsmith_index_u32(global0.x, 13u)], _wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(global2.a.x, var_1.a.x, u_input.c.x)), global4[_wgslsmith_index_u32(1u, 13u)]) << (~(~(~vec4<u32>(u_input.a.x, 10563u, 13122u, global0.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-737f)), 1124f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-1000f * -184f))), var_1.a.x);
}

