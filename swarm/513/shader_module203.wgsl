struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, true, false, false, false, false, true, true, true, true, false, true, false, true, false, false, false, true, false, false, true, false, false, false, true, true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = !(!(!global0[_wgslsmith_index_u32(~arg_0, 28u)]));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(firstTrailingBit(0u & arg_0), arg_0), arg_0), 28u)];
    var var_2 = Struct_1(~(-u_input.a.x), vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(~u_input.b, 1i), ~u_input.a.x, abs(_wgslsmith_div_i32(u_input.b, 2147483647i))), u_input.b ^ u_input.b);
    let var_3 = _wgslsmith_dot_vec4_i32(var_2.b, _wgslsmith_mult_vec4_i32(~(~vec4<i32>(u_input.b, var_2.b.x, var_2.c, 3284i)), -var_2.b)) > 34352i;
    var_2 = Struct_1(countOneBits(1i), var_2.b >> (~(vec4<u32>(1u, 4294967295u, 61097u, 1u) ^ (vec4<u32>(20589u, 1u, 4294967295u, arg_0) << (vec4<u32>(arg_0, 34086u, 27640u, arg_0) % vec4<u32>(32u)))) % vec4<u32>(32u)), var_2.a);
    return var_2.a;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = u_input.c.x;
    global0 = array<bool, 28>();
    var var_1 = arg_1;
    global0 = array<bool, 28>();
    var var_2 = arg_1;
    return vec4<i32>(min(2147483647i, _wgslsmith_sub_i32(arg_1.a, i32(-1i) * -var_0)), u_input.c.x, var_1.c, arg_1.b.x);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = ~reverseBits(45803u);
    var_0 = 4294967295u;
    var var_1 = arg_0.b.x;
    let var_2 = Struct_1(u_input.c.x, max(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(2068i, u_input.a.x, 1i), 26547i, -u_input.a.x, u_input.b), ~arg_0.b), func_3(arg_0.b.zw, Struct_1(-1i, ~vec4<i32>(arg_0.c, 8078i, 12625i, 1i), ~u_input.b))), u_input.a.x);
    var_1 = 31345i;
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(-28753i, firstLeadingBit(max(0i, var_2.b.x)) | ~2147483647i), -func_3(abs(~vec2<i32>(-1i, arg_0.c)), Struct_1(abs(var_2.a), arg_0.b & arg_0.b, min(u_input.b, -19413i))).x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = select(select(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 28u)], false, global0[_wgslsmith_index_u32(arg_2.x, 28u)], global0[_wgslsmith_index_u32(13495u, 28u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 28u)], global0[_wgslsmith_index_u32(arg_2.x, 28u)], true, true), false), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 28u)], false, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(14647u, 28u)], global0[_wgslsmith_index_u32(arg_2.x, 28u)]), true), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x ^ 48149u, 28u)], true, true, global0[_wgslsmith_index_u32(~53443u, 28u)])), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, arg_2.x) ^ 62839u, 28u)], all(!vec2<bool>(global0[_wgslsmith_index_u32(arg_2.x, 28u)], false)), global0[_wgslsmith_index_u32(5910u, 28u)], !(global0[_wgslsmith_index_u32(arg_2.x, 28u)] & true)), false), !(!(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(arg_2.x, 28u)]))), vec4<bool>(select((4294967295u >= arg_2.x) | any(vec4<bool>(false, false, false, false)), any(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 28u)], true)), -180f >= _wgslsmith_f_op_f32(abs(arg_1.x))), true, global0[_wgslsmith_index_u32(59218u, 28u)], global0[_wgslsmith_index_u32(arg_2.x, 28u)]));
    global0 = array<bool, 28>();
    var var_1 = max(-((-arg_0.b.x & 0i) ^ 0i), arg_0.c);
    var var_2 = Struct_1(~arg_0.a, select(_wgslsmith_mod_vec4_i32(abs(arg_0.b), arg_0.b) & reverseBits(~vec4<i32>(arg_0.a, arg_0.b.x, 882i, arg_0.c)), ~arg_0.b, !var_0.x), _wgslsmith_clamp_i32(firstLeadingBit(arg_0.b.x), _wgslsmith_add_i32(u_input.c.x, -(u_input.b ^ u_input.a.x)), ~arg_0.c));
    var_0 = vec4<bool>(any(vec2<bool>(true, -37139i == arg_0.b.x)), any(vec4<bool>(!(!var_0.x), !global0[_wgslsmith_index_u32(~arg_2.x, 28u)], true, true)), all(vec3<bool>(abs(4294967295u) > firstTrailingBit(arg_2.x), true, true)), global0[_wgslsmith_index_u32(1u, 28u)]);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 28>();
    var var_0 = Struct_1(-2147483647i, vec4<i32>(u_input.b, 2147483647i, ~(~32123i), abs(2147483647i)) << (vec4<u32>(24476u, 39738u, abs(select(1u, 4294967295u, true)), 1u & firstTrailingBit(0u)) % vec4<u32>(32u)), 2147483647i);
    let var_1 = Struct_1(-4602i & func_1(1u), vec4<i32>(-1i, var_0.b.x, i32(-1i) * -var_0.b.x, var_0.c), -4065i);
    var_0 = func_4(Struct_1(-func_2(var_1), var_1.b, reverseBits(var_0.c)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(264f, 848f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(247f, -1182f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-450f, 1519f, true))) - -1323f), -2409f), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(_wgslsmith_mult_u32(1u, 64436u), firstTrailingBit(2564u), ~1u), !select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(4392u, 28u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(13949u, 28u)]), true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(53103u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)]))));
    var var_2 = var_1;
    let var_3 = global0[_wgslsmith_index_u32(~(~1u), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(4446u, 17131u, ~0u) << ((_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(39453u, 4294967295u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 26354u, 20383u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 0u, 20907u)))) % vec3<u32>(32u)), 48722i, vec3<u32>(reverseBits(_wgslsmith_clamp_u32(62574u, 0u, ~47077u)), ~(~1u), 1u));
}

