struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<i32>;

var<private> global2: array<u32, 11> = array<u32, 11>(39492u, 0u, 345u, 4294967295u, 6514u, 0u, 7288u, 44614u, 1u, 20231u, 15236u);

var<private> global3: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-35982i, 0i), vec2<i32>(2147483647i, -24185i), vec2<i32>(-71329i, 1i), vec2<i32>(-22897i, 2147483647i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>) -> u32 {
    global2 = array<u32, 11>();
    let var_0 = u_input.b.xy;
    var var_1 = -1i;
    global3 = array<vec2<i32>, 4>();
    let var_2 = Struct_1(all(!select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(arg_0.x, false, true, true))) && arg_0.x, vec4<i32>(u_input.a, abs(-(u_input.a >> (global2[_wgslsmith_index_u32(var_0.x, 11u)] % 32u))), _wgslsmith_sub_i32(global1.x, _wgslsmith_sub_i32(u_input.a, _wgslsmith_div_i32(global1.x, u_input.a))), firstTrailingBit(~_wgslsmith_mult_i32(1i, -24662i))));
    return reverseBits(~var_0.x);
}

fn func_2(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = select(_wgslsmith_dot_vec4_u32(max(abs(u_input.b >> (vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.c) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(arg_0, 11u)], arg_0, 0u)) | u_input.b), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xyz, ~vec3<u32>(arg_0, global2[_wgslsmith_index_u32(arg_0, 11u)], 0u)), u_input.c, firstTrailingBit(u_input.c), global2[_wgslsmith_index_u32(0u, 11u)])), global2[_wgslsmith_index_u32(func_3(vec2<bool>(select(any(vec4<bool>(true, global0.x, global0.x, false)), !global0.x, true), any(vec4<bool>(global0.x, true, global0.x, false))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1086f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(513f - 1619f), _wgslsmith_f_op_f32(min(1061f, 1192f)))), -203f)), 11u)], true);
    let var_1 = 0u;
    global3 = array<vec2<i32>, 4>();
    let var_2 = !select(all(select(vec4<bool>(global0.x, false, global0.x, false), !vec4<bool>(false, true, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, true, false))), any(vec3<bool>(true, arg_1 < -2147483647i, false)), !all(vec2<bool>(global0.x, global0.x)) || any(!vec3<bool>(global0.x, false, true)));
    global1 = vec4<i32>(u_input.a, max(min(-(~arg_1), ~select(u_input.a, global1.x, global0.x)), reverseBits(global1.x)), arg_1, select(8645i, ~41167i, var_2 || any(select(vec2<bool>(true, var_2), vec2<bool>(true, false), vec2<bool>(true, global0.x)))));
    return any(select(!select(!vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(var_2, false, false), vec3<bool>(var_2, var_2, false), vec3<bool>(global0.x, global0.x, var_2)), !vec3<bool>(global0.x, true, global0.x)), vec3<bool>(false, global0.x, false), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_i32(countOneBits(~(-reverseBits(-23223i))), 0i);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-570f, 2520f), vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1126f, 378f) + _wgslsmith_div_vec2_f32(vec2<f32>(1436f, -1437f), vec2<f32>(253f, 1602f))))));
    var var_2 = Struct_3(var_1.a);
    var var_3 = any(arg_1.zx);
    global0 = arg_1.xx;
    return select(arg_0, vec2<bool>(true, true), any(select(arg_0, select(vec2<bool>(global0.x, false), arg_1.yw, true), !arg_1.x)) & !(!arg_1.x));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec4<i32> {
    let var_0 = Struct_2(~(~_wgslsmith_mod_vec2_u32(u_input.b.wx, vec2<u32>(global2[_wgslsmith_index_u32(1u, 11u)], 0u)) | (vec2<u32>(63774u, 4294967295u) | abs(u_input.b.zx))), Struct_1(true, arg_0.b & ~max(vec4<i32>(-1i, global1.x, -1i, arg_2), arg_0.b)), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 11u)], u_input.b.x, 0u, 1u)), vec4<u32>(73761u, u_input.c, 1u, 39851u)) < ~u_input.b.x, arg_0.b), Struct_1(true, arg_0.b));
    global3 = array<vec2<i32>, 4>();
    global3 = array<vec2<i32>, 4>();
    var var_1 = !select(vec2<bool>(false, true || global0.x), vec2<bool>(var_0.a.x <= ~1u, all(vec4<bool>(arg_0.a, false, false, false))), func_4(vec2<bool>(func_2(1u, arg_0.b.x), true), select(!vec4<bool>(false, arg_1, false, true), vec4<bool>(var_0.d.a, arg_1, true, arg_0.a), var_0.d.a)));
    let var_2 = var_0.b;
    return _wgslsmith_sub_vec4_i32(~firstTrailingBit(select(vec4<i32>(2147483647i, var_2.b.x, 16300i, u_input.a), vec4<i32>(-16873i, arg_0.b.x, 0i, -1i), !vec4<bool>(global0.x, var_0.b.a, true, arg_1))), ~vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(var_0.c.b, vec4<i32>(-1i, var_0.d.b.x, arg_0.b.x, -18951i))), u_input.a, ~arg_0.b.x, 0i));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> StorageBuffer {
    global1 = reverseBits(countOneBits(_wgslsmith_div_vec4_i32(-arg_0.b | (vec4<i32>(arg_2.c.b.x, u_input.a, 0i, -2147483647i) ^ vec4<i32>(arg_0.b.x, arg_2.b.b.x, -26973i, -2147483647i)), ~arg_0.b)));
    let var_0 = u_input.c;
    var var_1 = ~u_input.a;
    var var_2 = countOneBits(20601i);
    global2 = array<u32, 11>();
    return StorageBuffer(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(true, ~vec4<i32>(32502i, u_input.a, global1.x, -1i) & _wgslsmith_sub_vec4_i32(func_1(Struct_1(true, vec4<i32>(-2147483647i, global1.x, 33361i, global1.x)), true, 1i), ~vec4<i32>(56896i, 1i, u_input.a, -3536i))), _wgslsmith_clamp_i32(~(~abs(0i)), (_wgslsmith_dot_vec3_i32(global1.ywx, global1.www) & global1.x) >> (firstTrailingBit(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.c, 11u)], 18073u)) % 32u), global1.x), Struct_2(countOneBits(~(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23657u, 11u)], 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(4823u, 11u)]))), Struct_1(true && func_2(u_input.c, global1.x), vec4<i32>(global1.x, 0i, 1i, reverseBits(global1.x))), Struct_1(true, abs(~vec4<i32>(-66477i, global1.x, 1i, global1.x))), Struct_1(false, ~(-vec4<i32>(-66795i, -3874i, 1i, 41229i)))));
}

