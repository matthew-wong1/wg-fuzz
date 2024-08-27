struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: array<bool, 16>;

var<private> global3: array<Struct_1, 25>;

var<private> global4: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = 2464i;
    let var_2 = var_0.b.zx;
    var var_3 = abs(vec4<u32>(_wgslsmith_mod_u32(min(~121u, 0u), ~22858u >> (firstTrailingBit(u_input.a.x) % 32u)), ~firstLeadingBit(78503u), (_wgslsmith_clamp_u32(47042u, 5345u, 1u) & 50502u) | (firstTrailingBit(u_input.a.x) ^ 19646u), u_input.b));
    let var_4 = var_0;
    return select(var_0.b, vec4<bool>(var_0.b.x, !any(arg_1.b.yy), var_2.x || (_wgslsmith_sub_u32(1u, var_3.x) == 4294967295u), true != (global4.a >= -462f)), select(select(!select(arg_1.b, vec4<bool>(true, false, true, false), vec4<bool>(true, arg_1.b.x, true, true)), vec4<bool>(true, var_4.a >= -2147483647i, all(var_0.b), !var_4.b.x), true | select(var_2.x, var_2.x, var_2.x)), arg_1.b, !select(var_0.b, !var_4.b, var_4.b)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    let var_0 = Struct_2(u_input.c.x, !(!func_3(global4.c, Struct_2(global4.c.x, vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(4294967295u, 16u)])), _wgslsmith_mult_i32(u_input.c.x, 8212i))));
    var var_1 = 1055f;
    var var_2 = ~(0i | -(-53305i ^ _wgslsmith_clamp_i32(global4.c.x, 19906i, var_0.a)));
    var var_3 = global2[_wgslsmith_index_u32(~arg_1, 16u)];
    let var_4 = Struct_1(_wgslsmith_f_op_f32(step(global4.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-424f * global4.a))))), _wgslsmith_mult_vec2_i32(global4.b, vec2<i32>(var_0.a, reverseBits(2147483647i >> (u_input.a.x % 32u)))), global4.c);
    return arg_1;
}

fn func_1() -> bool {
    global4 = global3[_wgslsmith_index_u32(8533u, 25u)];
    global0 = u_input.a.x;
    var var_0 = global1.wwx;
    var var_1 = var_0.x;
    var var_2 = 1u & ~abs(~func_2(vec2<f32>(global4.a, 799f), 4294967295u));
    return global2[_wgslsmith_index_u32(select(41444u << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 32721u, 1u, u_input.b)), vec4<u32>(u_input.b, u_input.b, 4294967295u >> (u_input.a.x % 32u), 1u)) % 32u), ~max(17261u, u_input.b), global1.x), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-2147483647i, vec4<bool>(global1.x, false, any(!(!vec3<bool>(global1.x, global1.x, global2[_wgslsmith_index_u32(u_input.b, 16u)]))), true));
    var var_1 = vec3<bool>(func_1(), true, global2[_wgslsmith_index_u32(~(~(~u_input.a.x)), 16u)]);
    let var_2 = all(!vec3<bool>(true, var_0.b.x | true, true)) || !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global4.a)), _wgslsmith_f_op_f32(-global4.a))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.a, 1522f) + _wgslsmith_f_op_f32(-global4.a)));
    global4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a * 1827f)), -350f)), vec2<i32>(11034i, 16579i), global4.c);
    global4 = global3[_wgslsmith_index_u32(~(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~38667u) | u_input.b) << (~max(~_wgslsmith_clamp_u32(u_input.b, u_input.b, 27990u), ~_wgslsmith_add_u32(82164u, u_input.a.x)) % 32u), 25u)];
    let var_3 = Struct_2(1i, !(!var_0.b));
    var_0 = var_3;
    let var_4 = _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, ~u_input.a.x << (reverseBits(u_input.a.x) % 32u)), min(~u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(-1i ^ -var_0.a);
}

