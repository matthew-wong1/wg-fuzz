struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 280f;

var<private> global1: array<Struct_1, 3>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(39133u, 83707u, 0u, 4294967295u), vec4<bool>(true, true, true, false), 4294967295u, vec3<u32>(4294967295u, 87559u, 44643u));

var<private> global3: vec3<f32>;

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_1(~(~((vec4<u32>(global2.d.x, u_input.a, 0u, u_input.a) ^ global2.a) << (global2.a % vec4<u32>(32u)))), global2.b, u_input.a, ~vec3<u32>(firstTrailingBit(1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 27395u), vec2<u32>(u_input.a, 39328u)), 10503u));
    let var_1 = u_input.b.yz;
    let var_2 = Struct_1(firstTrailingBit(var_0.a), !select(var_0.b, var_0.b, !any(var_0.b.zw)), 44217u, ~countOneBits(~(vec3<u32>(0u, u_input.a, 4294967295u) ^ global2.a.xyy)));
    var var_3 = _wgslsmith_f_op_f32(global3.x * global3.x);
    var var_4 = -1i;
    return global2.d.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(global3.x));
    var var_1 = global2.b.xw;
    var var_2 = ~vec2<i32>(-1i, -1287i);
    global1 = array<Struct_1, 3>();
    global2 = Struct_1(arg_1.a, arg_1.b, _wgslsmith_add_u32(~global2.d.x, arg_1.a.x), arg_1.d);
    return ~func_2(2004i);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    let var_0 = reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(global2.a ^ arg_2.a, vec4<u32>(u_input.a, 60152u, 0u, 7876u) << (arg_2.a % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_2.a, global2.a, arg_2.a), ~vec4<u32>(76539u, 107277u, 4294967295u, 45486u)), ~global2.a));
    global0 = 807f;
    let var_1 = !arg_3.x;
    let var_2 = Struct_1(vec4<u32>(0u, arg_0, 1u, global2.d.x), vec4<bool>(false, !arg_2.b.x, arg_3.x, true), _wgslsmith_dot_vec2_u32(global2.a.xw, firstLeadingBit(reverseBits(arg_2.d.zx) >> (~vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u)))), abs(~(~arg_2.a.wxw)));
    let var_3 = var_2;
    return 25916u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(abs(vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, global4.x) ^ -31208i, -(~u_input.b.x))), vec2<i32>(-42900i, 39990i));
    var var_1 = (vec4<u32>(max(91523u, 0u) >> ((u_input.a & 22036u) % 32u), u_input.a, 4294967295u, ~(global2.c >> (u_input.a % 32u))) & ~vec4<u32>(reverseBits(u_input.a), _wgslsmith_sub_u32(23762u, global2.a.x), countOneBits(u_input.a), _wgslsmith_clamp_u32(4294967295u, 0u, global2.a.x))) & vec4<u32>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -340f)), global1[_wgslsmith_index_u32(33771u, 3u)]) | 13507u, _wgslsmith_div_u32(func_3(_wgslsmith_add_u32(0u, u_input.a), global2.b.x, Struct_1(global2.a, vec4<bool>(false, false, true, global2.b.x), 4294967295u, vec3<u32>(1u, 37997u, 1u)), global2.b.wx), ~_wgslsmith_mult_u32(u_input.a, 54474u)), _wgslsmith_add_u32(0u, global2.a.x), 51220u);
    var var_2 = _wgslsmith_add_i32(max(max(-2147483647i, firstLeadingBit(-u_input.b.x)), _wgslsmith_clamp_i32(-(~2147483647i), u_input.b.x, 2147483647i)), -abs((var_0.x >> (0u % 32u)) >> ((5072u & u_input.a) % 32u)));
    var var_3 = abs(-17832i);
    var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~global2.d.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global3.xz, _wgslsmith_f_op_vec2_f32(global3.zx + vec2<f32>(-384f, global3.x))))), countOneBits(vec4<i32>(_wgslsmith_sub_i32(global4.x, -18768i), ~u_input.b.x, min(~6031i, u_input.b.x >> (var_1.x % 32u)), _wgslsmith_div_i32(global4.x, abs(12372i)))), vec3<i32>(var_0.x, 8082i, -2147483647i), max(vec3<i32>(firstTrailingBit(-3368i), var_0.x, u_input.b.x), vec3<i32>(-14144i, -11078i, -var_0.x)) << (global2.a.xzx % vec3<u32>(32u)));
}

