struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: Struct_1;

var<private> global3: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    var var_0 = !(!all(vec4<bool>(true, true, true, true)) && false);
    global1 = array<Struct_1, 14>();
    var var_1 = firstLeadingBit(global2.b);
    let var_2 = abs(-2147483647i | (-u_input.c.x >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, global3.x), vec2<u32>(global3.x, global3.x)) >> (_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) % 32u)) % 32u)));
    var_0 = all(vec4<bool>(all(vec4<bool>(false, false, select(true, true, true), true)), all(vec3<bool>(true, true, any(vec4<bool>(true, false, false, false)))), (firstTrailingBit(2147483647i) & 1i) >= 0i, select(any(vec3<bool>(true, true, true)), true, true)));
    return _wgslsmith_div_u32(~0u, reverseBits(abs(global2.a)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    global2 = Struct_1(0u, _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 19u)], -1i), 32257i), 1541f);
    global1 = array<Struct_1, 14>();
    var var_0 = Struct_1(~59783u, ~global0[_wgslsmith_index_u32(~arg_0.a, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))));
    var var_1 = 4059u;
    global2 = Struct_1(func_3(), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(4294967295u << (func_3() % 32u), 0u)), 19u)], var_0.c);
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = select(!vec3<bool>(!arg_0, func_2(arg_1, _wgslsmith_sub_u32(1u, global3.x)), !all(vec3<bool>(false, true, arg_0))), vec3<bool>(all(vec2<bool>(true, true)), !arg_0, true), arg_0);
    var var_1 = global2.a;
    let var_2 = Struct_1(6112u, -18316i, global2.c);
    let var_3 = global2.a <= select(global3.x, firstTrailingBit(~global3.x >> (firstTrailingBit(global3.x) % 32u)), true);
    let var_4 = var_2;
    return 0u;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> vec3<u32> {
    global3 = vec3<u32>(select(~45258u >> (func_4(func_2(Struct_1(6686u, 23255i, global2.c), arg_1.x), global1[_wgslsmith_index_u32(~global3.x, 14u)]) % 32u), (87511u << (~4294967295u % 32u)) ^ max(u_input.a.x, global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(629f))) < 114f), ~arg_1.x, _wgslsmith_dot_vec3_u32(arg_1.zyx, arg_1.wyx));
    return abs(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(13878u, 19687u, u_input.d), _wgslsmith_mult_vec3_u32(arg_1.xzz, vec3<u32>(arg_1.x, global2.a, 4294967295u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(123971u, 0u, u_input.a.x), vec3<u32>(62943u, global3.x, 4294967295u))) ^ arg_1.yyy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(52708u, 0u), 14u)];
    let var_1 = vec2<u32>(global2.a, u_input.b);
    global0 = array<i32, 19>();
    global3 = ~min(min(~vec3<u32>(global2.a, 6772u, var_0.a) << (reverseBits(vec3<u32>(global3.x, 81578u, 43725u)) % vec3<u32>(32u)), func_1(_wgslsmith_add_i32(-66902i, -1i), firstLeadingBit(vec4<u32>(7269u, 4294967295u, 1u, 13431u)))), min(vec3<u32>(select(1u, 1u, true), 14783u, global2.a), _wgslsmith_add_vec3_u32(vec3<u32>(73844u, global3.x, global3.x), vec3<u32>(u_input.a.x, 0u, var_0.a))));
    global3 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_1.x)), vec2<u32>(_wgslsmith_clamp_u32(1071u, 79312u, 16580u), var_0.a)), ~(~_wgslsmith_sub_u32(4294967295u, var_1.x))), ~u_input.d, _wgslsmith_mult_u32(~global2.a, var_1.x));
    let var_2 = global2.c;
    global2 = Struct_1(_wgslsmith_add_u32(var_0.a | global2.a, global3.x), min(_wgslsmith_dot_vec2_i32(u_input.c >> (var_1 % vec2<u32>(32u)), vec2<i32>(global2.b, global2.b)) << (abs(var_1.x) % 32u), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(global3.x, 19u)], 1i, global2.b, 28200i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, 2147483647i, -1i, 1i), vec4<i32>(var_0.b, var_0.b, 60620i, 33928i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - 1015f));
    let x = u_input.a;
    s_output = StorageBuffer((vec3<u32>(~36037u, 0u << (u_input.d % 32u), _wgslsmith_add_u32(0u, 1u)) >> (_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(global2.a, global3.x, 11745u)), ~vec3<u32>(1u, 0u, u_input.d)) % vec3<u32>(32u))) >> (~(~(~vec3<u32>(4294967295u, global3.x, 16874u))) % vec3<u32>(32u)), ~max(_wgslsmith_mult_vec4_u32(vec4<u32>(49050u, 26721u, global3.x, 1u), max(vec4<u32>(3943u, global3.x, 0u, var_0.a), vec4<u32>(global3.x, 0u, var_1.x, 4294967295u))), min(countOneBits(vec4<u32>(u_input.b, global2.a, 56732u, 16368u)), vec4<u32>(5016u, 1u, var_0.a, var_0.a) >> (vec4<u32>(global2.a, 25533u, 51392u, global3.x) % vec4<u32>(32u)))));
}

