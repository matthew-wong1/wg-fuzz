struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: f32;

var<private> global2: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 13u)];
    global1 = _wgslsmith_f_op_f32(1265f * -632f);
    let var_1 = Struct_3(u_input.c >> (~_wgslsmith_sub_u32(3760u, _wgslsmith_mult_u32(global2.a, 1u)) % 32u), Struct_2(43322u, _wgslsmith_f_op_f32(-1417f * 1f)), vec2<u32>(u_input.c, u_input.d.x), -_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(u_input.e ^ 55848i, _wgslsmith_mult_i32(u_input.e, 28440i), 1i)));
    var var_2 = 39330i;
    global2 = var_1.b;
    return _wgslsmith_f_op_f32(sign(global2.b));
}

fn func_3() -> bool {
    global0 = array<Struct_2, 13>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.b))));
    global2 = Struct_2(1u, _wgslsmith_f_op_f32(-var_0));
    let var_1 = Struct_2(firstLeadingBit(~(~global2.a & firstTrailingBit(u_input.d.x))), -3084f);
    return any(select(vec4<bool>(any(vec3<bool>(false, false, true)) & true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)), select(false, true, true), true), select(vec4<bool>(false, all(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), true), vec4<bool>(true, any(vec2<bool>(true, false)), true, u_input.e >= -2147483647i), vec4<bool>(true, all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, false)), true)), vec4<bool>(false, true, false, true)));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    let var_1 = Struct_3(abs(34737u), global0[_wgslsmith_index_u32(~u_input.c << (0u % 32u), 13u)], ~(~min(vec2<u32>(41629u, u_input.b) & vec2<u32>(global2.a, global2.a), _wgslsmith_mult_vec2_u32(vec2<u32>(global2.a, 0u), vec2<u32>(63706u, 5301u)))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, select(0i, -1i, true), 1i), ~_wgslsmith_add_vec3_i32(vec3<i32>(-33476i, u_input.e, u_input.e), min(vec3<i32>(47090i, 0i, u_input.e), vec3<i32>(68051i, u_input.e, -58099i)))));
    global1 = _wgslsmith_f_op_f32(-var_1.b.b);
    let var_2 = all(!(!vec3<bool>(func_3(), false, u_input.b >= 0u)));
    global1 = global2.b;
    return var_1.d.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = select(vec2<i32>(u_input.e, ~min(1i, ~(-1i))), abs(select(vec2<i32>(27117i ^ u_input.e, u_input.e << (1u % 32u)), func_1(true), true)), select(select(true != func_3(), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -430f) >= global2.b), ~(~u_input.b) < 21278u, false));
    let var_2 = vec4<u32>(u_input.d.x, min(0u, ~global2.a), ~u_input.b, 5604u);
    var_0 = u_input.d.x;
    global1 = _wgslsmith_f_op_f32(806f - _wgslsmith_f_op_f32(func_2()));
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -var_1.x) & _wgslsmith_div_i32(u_input.e, -16781i), ~(~_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(global2.a, 1u, global2.a))));
}

