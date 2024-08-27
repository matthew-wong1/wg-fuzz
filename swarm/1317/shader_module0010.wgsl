struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 9558i);

var<private> global1: array<u32, 25> = array<u32, 25>(32306u, 1u, 1u, 1u, 18909u, 21862u, 0u, 73750u, 4294967295u, 1u, 17501u, 1u, 48152u, 0u, 90457u, 0u, 4294967295u, 57681u, 12164u, 1u, 4748u, 11567u, 4294967295u, 1u, 49642u);

var<private> global2: vec2<i32> = vec2<i32>(13498i, -1i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = true;
    global0 = firstTrailingBit(~(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(7660i, -1i), vec2<i32>(global2.x, 2147483647i))));
    global0 = vec2<i32>(_wgslsmith_div_i32(global2.x, min(reverseBits(-1i), _wgslsmith_sub_i32(~global0.x, max(7506i, -45794i)))), -37750i);
    var var_1 = !var_0;
    global0 = firstLeadingBit(select(~vec2<i32>(-global2.x, global2.x), vec2<i32>(14693i | global0.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, global2.x), global0.x)), any(vec3<bool>(select(var_0, true, true), true, true))));
    return _wgslsmith_mod_i32(-_wgslsmith_sub_i32(global0.x, ~global2.x), -(~(-global0.x >> (arg_0 % 32u))));
}

fn func_2() -> vec2<i32> {
    let var_0 = reverseBits(_wgslsmith_mult_vec2_i32(-vec2<i32>(func_3(5714u), ~global0.x), vec2<i32>(~(~(-57613i)), global2.x)));
    var var_1 = Struct_3(Struct_1(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), true))), -57166i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -702f))), -748f)), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a), min(_wgslsmith_sub_vec3_u32(u_input.a, firstLeadingBit(u_input.a)), reverseBits(~u_input.a)));
    var var_2 = var_0.x;
    global0 = ~vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(var_0.x, abs(var_0.x))), var_1.b);
    let var_3 = false;
    return -firstTrailingBit(var_0);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global2 = func_2();
    global0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-arg_2.a.zz, arg_2.a.zz), (abs(2147483647i) >> ((10709u | global1[_wgslsmith_index_u32(8807u, 25u)]) % 32u)) & arg_2.a.x), global0.x);
    global0 = arg_2.a.zx;
    let var_0 = vec3<bool>(true, -49203i == (18544i << (u_input.c % 32u)), global0.x <= 30098i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 2296f)))), 1000f));
    return 1814u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(func_1(vec4<u32>(abs(4294967295u), ~103060u, _wgslsmith_add_u32(u_input.a.x, 43977u), global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), Struct_2(vec3<i32>(45444i, global0.x, global2.x) | vec3<i32>(2147483647i, global2.x, global0.x)), Struct_2(vec3<i32>(global0.x, global2.x, global2.x))) != 56956u);
    global2 = _wgslsmith_sub_vec2_i32(vec2<i32>(~14017i, reverseBits(global2.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(17018i, -1i)), firstTrailingBit(vec2<i32>(global2.x, -6177i))), countOneBits(vec2<i32>(46152i, 1i))), _wgslsmith_sub_vec2_i32(max(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, global2.x), vec2<i32>(global2.x, global0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, -2147483647i), vec2<i32>(global2.x, 4300i))), firstLeadingBit(vec2<i32>(2147483647i, 26973i) ^ vec2<i32>(global2.x, 22378i)))));
    var var_1 = Struct_4(any(vec4<bool>(true, global2.x > -1i, any(vec3<bool>(true, true, true)), true)) & any(vec3<bool>(all(vec2<bool>(true, true)), false, all(vec3<bool>(true, true, true)))), Struct_3(Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -921f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1076f))))), ~(~select(u_input.a, vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 25u)], 0u, 64221u), true)), _wgslsmith_clamp_vec3_u32(~u_input.a & select(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(57573u, 25u)], global1[_wgslsmith_index_u32(u_input.c, 25u)], u_input.d), true), ~(~u_input.a), select(abs(u_input.a), u_input.a, true))), Struct_1(vec3<bool>(any(vec2<bool>(true, true)), select(true, false, true), select(false, false, true) || select(false, true, false))));
    var var_2 = var_1.b.d.yx;
    global2 = select(_wgslsmith_add_vec2_i32(vec2<i32>(16087i, _wgslsmith_add_i32(min(global0.x, 2147483647i), global2.x)), ~(vec2<i32>(-23186i, var_1.b.b) << (abs(vec2<u32>(65055u, 4294967295u)) % vec2<u32>(32u)))), vec2<i32>(-38044i, var_1.b.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1.b.c)))))) > var_1.b.c);
    var var_3 = Struct_2(vec3<i32>(func_2().x, func_3(firstTrailingBit(~26776u)), var_1.b.b << (~var_2.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.e.x, ~vec3<i32>(func_3(~global1[_wgslsmith_index_u32(u_input.d, 25u)]), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.x, var_1.b.b, var_1.b.b), vec3<i32>(22342i, global2.x, -55761i)), -4391i | max(var_1.b.b, 2147483647i)), min(vec3<i32>(-var_3.a.x, -43830i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_1.b.b, 4989i), _wgslsmith_mult_i32(global2.x, -31084i))), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(var_3.a.x), max(79121i, global0.x), ~(-2147483647i)), var_3.a)));
}

