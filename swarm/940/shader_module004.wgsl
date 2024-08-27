struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: Struct_1;

var<private> global2: array<i32, 16>;

var<private> global3: Struct_2 = Struct_2(32940u);

var<private> global4: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> u32 {
    let var_0 = abs(firstLeadingBit(2147483647i));
    return ~(~(~(~abs(u_input.a.x))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = ~(~(~(u_input.a | vec2<u32>(global3.a, global1.b.x))) >> (vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.b), ~global3.a), ~_wgslsmith_mod_u32(global3.a, 4294967295u)) % vec2<u32>(32u)));
    var var_1 = !(global1.d.x == global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_2(), 33308u, 9815u), 16u)]);
    global2 = array<i32, 16>();
    var var_2 = global0[_wgslsmith_index_u32(global3.a, 24u)];
    let var_3 = Struct_2(func_2());
    return Struct_1(vec3<u32>(u_input.b, ~var_0.x, _wgslsmith_div_u32(41061u, ~var_3.a ^ ~39057u)), global1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -464f), global1.c)), ~(-(global1.d & (vec2<i32>(global1.d.x, -31265i) >> (var_0 % vec2<u32>(32u))))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(~global1.d.x, 0i, -17301i, global1.d.x);
    var var_1 = ~arg_3.d.x;
    global4 = !any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))));
    var var_2 = var_0.x;
    let var_3 = global1.d;
    return Struct_1(select(arg_3.a, vec3<u32>(_wgslsmith_div_u32(arg_3.a.x, _wgslsmith_clamp_u32(4294967295u, 79582u, global1.b.x)), arg_1.a, _wgslsmith_dot_vec2_u32(arg_3.a.zz, vec2<u32>(global3.a, 4294967295u)) ^ ~24753u), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), vec3<u32>(1u, ~u_input.d, 1u), arg_3.c, -min(vec2<i32>(0i, var_3.x), max(vec2<i32>(var_3.x, 15376i), vec2<i32>(global1.d.x, 0i)) & var_0.yx));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = firstLeadingBit(reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 8157i, global1.d.x, global2[_wgslsmith_index_u32(58571u, 16u)]), -vec4<i32>(1i, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], -35853i, arg_0.d.x)), firstLeadingBit(vec4<i32>(global1.d.x, global1.d.x, -56727i, 77191i) ^ vec4<i32>(22065i, 0i, 16645i, 2147483647i)))));
    global3 = global0[_wgslsmith_index_u32(20516u, 24u)];
    global2 = array<i32, 16>();
    var_0 = -(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.x, arg_0.d.x, -9975i), vec4<i32>(1i, 2147483647i, global1.d.x, global2[_wgslsmith_index_u32(36266u, 16u)])))) << ((~abs(~vec4<u32>(7249u, global1.b.x, 0u, 44607u)) | vec4<u32>(func_1(all(vec4<bool>(true, false, false, true))).b.x, global3.a | min(33341u, 51970u), global3.a, 21219u)) % vec4<u32>(32u));
    let var_1 = _wgslsmith_div_f32(1065f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1215f, arg_0.c)), 373f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(237f)))));
    return var_0.x | -var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = array<Struct_2, 24>();
    let var_1 = abs(func_4(func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c), global1.c, true)), Struct_2(_wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(global3.a, global3.a, u_input.c))), reverseBits(global1.b.x), func_1(true))));
    global3 = global0[_wgslsmith_index_u32(1u & global3.a, 24u)];
    let var_2 = global0[_wgslsmith_index_u32(func_3(global1.c, global0[_wgslsmith_index_u32(u_input.b, 24u)], 4294967295u, func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(402f - 1000f), _wgslsmith_f_op_f32(step(global1.c, 1283f)))), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(func_1(true).a.xz, global1.b.zy)), 24u)], u_input.a.x, Struct_1(_wgslsmith_mult_vec3_u32(~global1.a, firstTrailingBit(global1.a)), ~countOneBits(global1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c))), select(global1.d, vec2<i32>(global2[_wgslsmith_index_u32(u_input.d, 16u)], 41498i) ^ vec2<i32>(global2[_wgslsmith_index_u32(9287u, 16u)], -27852i), var_1 > 3971i)))).a.x, 24u)];
    var var_3 = min(~func_1(!select(true, true, false)).a, global1.b | global1.b);
    var_3 = vec3<u32>(~var_3.x, ~func_1(var_3.x <= u_input.c).b.x >> (global1.a.x % 32u), ~_wgslsmith_add_u32(0u, 0u));
    global1 = Struct_1(countOneBits(~(_wgslsmith_sub_vec3_u32(global1.b, global1.a) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 12048u, 52251u), global1.a))), vec3<u32>(global1.b.x, global1.a.x, 103658u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.c)))), vec2<i32>(global1.d.x, 24030i) >> (vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(global3.a), _wgslsmith_div_u32(1u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global3.a, 0u, u_input.d), ~vec4<u32>(var_2.a, var_3.x, 1u, 4294967295u))) % vec2<u32>(32u)));
    global1 = func_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.a, var_3.xz, vec2<u32>(61869u, 23059u)), var_3.zz) > _wgslsmith_dot_vec2_u32(var_3.yx, vec2<u32>(u_input.c, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_3(1000f, Struct_2(~4294967295u), var_2.a, func_3(_wgslsmith_div_f32(-1452f, -2562f), Struct_2(global3.a), global1.b.x, Struct_1(global1.b, vec3<u32>(var_2.a, 35458u, var_2.a), -703f, global1.d)))), min(-2147483647i, countOneBits(9177i) << (select(u_input.b, func_3(-1000f, Struct_2(global3.a), 47390u, Struct_1(vec3<u32>(42501u, var_2.a, 27419u), global1.a, 1330f, global1.d)).a.x, false) % 32u)), ~_wgslsmith_dot_vec2_u32(global1.b.zx, var_3.zz | (vec2<u32>(u_input.b, global3.a) ^ var_3.yz)));
}

