struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global1: vec2<bool>;

var<private> global2: array<i32, 31>;

var<private> global3: i32 = 0i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global1 = select(vec2<bool>(true, true), vec2<bool>(global1.x, global1.x), true);
    let var_0 = any(!select(vec2<bool>(!global1.x, select(false, global1.x, global1.x)), !vec2<bool>(true, global1.x), vec2<bool>(true, true)));
    let var_1 = ~arg_0;
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 21u)];
    var var_3 = Struct_1(true);
    return !vec2<bool>(any(vec4<bool>(global1.x, var_0, all(vec4<bool>(false, true, var_0, var_0)), false)), all(select(!vec4<bool>(false, var_3.a, false, true), !vec4<bool>(true, global1.x, false, var_3.a), !vec4<bool>(var_3.a, var_0, true, var_3.a))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_1(!arg_0);
    global2 = array<i32, 31>();
    global0 = array<Struct_1, 21>();
    let var_1 = -(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(56665i, 1811i, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 557i, global2[_wgslsmith_index_u32(1u, 31u)], -1825i)), countOneBits(-2147483647i)) & global2[_wgslsmith_index_u32(~u_input.b.x, 31u)]) ^ global2[_wgslsmith_index_u32(u_input.b.x, 31u)];
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) >> (~vec4<u32>(u_input.b.x, 52598u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, u_input.b.x, 12353u, u_input.b.x) ^ abs(vec4<u32>(24864u, 0u, u_input.b.x, u_input.b.x))), vec4<u32>(max(_wgslsmith_clamp_u32(10482u, u_input.b.x, 36306u), _wgslsmith_mult_u32(41194u, 35388u)), ~30500u, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(57307u, 39676u, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<u32>(0u, u_input.b.x, 4294967295u, 0u)))), ~(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 4294967295u), ~u_input.b.x, 19502u, u_input.b.x) | ~(vec4<u32>(17373u, 1u, 4294967295u, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u))));
    return global2[_wgslsmith_index_u32(~(~(~(~u_input.b.x))), 31u)];
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], -2147483647i), _wgslsmith_sub_i32(1i, 0i));
    var var_1 = select(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 52261u), _wgslsmith_add_u32(1u, 58718u), reverseBits(27748u)) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(99214u, 4294967295u, 32079u), vec3<u32>(u_input.b.x, 23169u, 1u)) % vec3<u32>(32u)), vec3<u32>(8869u, u_input.b.x, ~20370u << ((0u << (u_input.b.x % 32u)) % 32u))), _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(u_input.b.x, 30810u, 11470u))), countOneBits(~(~vec3<u32>(17852u, 60796u, u_input.b.x)))), true);
    global1 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global1.x, 99599u <= u_input.b.x)), vec2<bool>(true, true), func_2(global2[_wgslsmith_index_u32(~1u, 31u)])), select(vec2<bool>(func_2(func_3(false)).x, !arg_0.a), select(func_2(min(u_input.c, var_0.x)), func_2(var_0.x), !(!vec2<bool>(global1.x, global1.x))), !vec2<bool>(true, arg_0.a)), !arg_0.a);
    global3 = -u_input.c;
    let var_2 = ~(~countOneBits(4294967295u) | u_input.b.x) > ~(~_wgslsmith_mult_u32(~0u, var_1.x));
    return countOneBits(~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec3<bool>(all(vec3<bool>(global1.x, global1.x, global1.x)), global1.x, all(vec3<bool>(true, true, global1.x)))) || true;
    let var_1 = !((_wgslsmith_clamp_u32(1u, ~u_input.b.x, _wgslsmith_div_u32(4294967295u, u_input.b.x)) <= ~(~u_input.b.x)) | false);
    let var_2 = global0[_wgslsmith_index_u32(~(firstTrailingBit(func_1(Struct_1(global1.x))) | 1u), 21u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-174f, 178f)), -1000f), -1000f))) * -987f);
    global3 = ~(_wgslsmith_mult_i32(u_input.a, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]) ^ _wgslsmith_sub_i32(u_input.a, -2147483647i));
    let var_4 = ~(~(~((0u & u_input.b.x) | u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-2147483647i, ~global2[_wgslsmith_index_u32(~(~7664u), 31u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1626f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-615f, 443f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, 714f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1694f, -1345f)))), -490f, ~max(~vec3<u32>(u_input.b.x, 69326u, var_4), ~vec3<u32>(1383u, 29285u, 4294967295u)));
}

