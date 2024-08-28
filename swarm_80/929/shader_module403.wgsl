struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 15801i, 0i);

var<private> global1: vec2<i32> = vec2<i32>(-3575i, -48255i);

var<private> global2: vec4<f32> = vec4<f32>(1000f, -993f, 1148f, -134f);

var<private> global3: array<i32, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = true;
    var var_1 = global0.yx;
    var var_2 = global2.wzz;
    return true;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_2(true, select(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.d, 2147483647i, 9872i, 1i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -1i, global1.x, 13691i), vec4<i32>(global1.x, global3[_wgslsmith_index_u32(u_input.b, 26u)], 28748i, global1.x), vec4<i32>(global1.x, global0.x, 0i, global1.x)), vec4<i32>(-1i, -2147483647i, _wgslsmith_mod_i32(11619i, u_input.d), global3[_wgslsmith_index_u32(u_input.b, 26u)])), -vec4<i32>(-5107i, -u_input.d, -45215i, ~global0.x), false), ~_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.d, -global0.x, ~1i, -32633i), vec4<i32>(-14580i, 56459i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.c.x, 26u)], global3[_wgslsmith_index_u32(679u, 26u)]), _wgslsmith_mult_i32(-59482i, -1i))), firstTrailingBit(global0.x));
    let var_1 = Struct_2(countOneBits(_wgslsmith_clamp_u32(15870u, min(u_input.b, u_input.c.x), u_input.a & u_input.a)) < u_input.c.x, var_0.c, var_0.c, global0.x);
    let var_2 = _wgslsmith_clamp_vec4_i32(abs(abs(var_0.b)), vec4<i32>(-u_input.d, select(_wgslsmith_add_i32(var_0.d, -1i) >> (21974u % 32u), -(~global1.x), !(1224f > global2.x)), _wgslsmith_mult_i32(~(global3[_wgslsmith_index_u32(u_input.a, 26u)] & 45774i), ~(0i << (1u % 32u))), u_input.d), ~(abs(var_1.c) << (countOneBits(u_input.c) % vec4<u32>(32u))) >> (u_input.c % vec4<u32>(32u)));
    var_0 = Struct_2((var_0.a && true) | func_1(reverseBits(reverseBits(global1.x)), Struct_1(!var_1.a, min(var_2, vec4<i32>(var_2.x, global0.x, 7165i, global1.x)), vec2<u32>(u_input.a, 4294967295u))), var_2 & var_1.b, firstTrailingBit(-(~(~vec4<i32>(u_input.d, 1i, -1268i, var_2.x)))), var_1.d);
    let var_3 = Struct_1(false, (_wgslsmith_div_vec4_i32(var_0.c, -var_1.c) | var_2) >> (~u_input.c % vec4<u32>(32u)), countOneBits(_wgslsmith_mult_vec2_u32(u_input.c.yw, ~vec2<u32>(u_input.b, u_input.a))));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(22011i, var_2.x), global0.x, 1i), max(var_3.b.xyx, ~(-vec3<i32>(-35276i, var_1.d, 1i)))), -27003i);
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_sub_i32(func_3(vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)))), max(u_input.d, abs(~(1i << (u_input.a % 32u)))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1563f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * global2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), global2.x);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), -2096f, _wgslsmith_f_op_f32(-global2.x), -324f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1072f, 1149f, -1304f, -609f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -875f), global2.x, _wgslsmith_f_op_f32(-1198f + global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1620f)) * vec4<f32>(global2.x, _wgslsmith_f_op_f32(max(-1152f, global2.x)), _wgslsmith_f_op_f32(max(1156f, 1000f)), _wgslsmith_f_op_f32(864f - global2.x)))));
    let var_1 = Struct_1(false, _wgslsmith_sub_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(5378u, 26u)], -1i, 15507i, u_input.d) >> (abs(u_input.c) % vec4<u32>(32u)), (_wgslsmith_sub_vec4_i32(vec4<i32>(30764i, 35211i, 0i, global3[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<i32>(global3[_wgslsmith_index_u32(26256u, 26u)], global0.x, -38286i, global0.x)) ^ vec4<i32>(u_input.d, u_input.d, 0i, 0i)) << (vec4<u32>(_wgslsmith_add_u32(48246u, 0u), _wgslsmith_dot_vec2_u32(u_input.c.wz, vec2<u32>(u_input.b, u_input.b)), u_input.b, _wgslsmith_clamp_u32(14939u, 4294967295u, 0u)) % vec4<u32>(32u))), u_input.c.yy);
    var var_2 = Struct_3(any(vec3<bool>(~(-2147483647i) >= -u_input.d, var_1.c.x <= u_input.a, false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-607f + -691f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_2(func_1(global1.x, Struct_1(true, vec4<i32>(-1i, 1i, 44772i, global1.x), u_input.c.zy)) || true));
    var_0 = _wgslsmith_f_op_f32(-1418f * global2.x);
    let var_1 = Struct_2(false, select(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, 23614i, 1684i, global0.x), vec4<i32>(-2147483647i ^ global1.x, firstLeadingBit(-24724i), 1i, ~global3[_wgslsmith_index_u32(u_input.a, 26u)])), vec4<i32>(~u_input.d, max(_wgslsmith_add_i32(1i, global0.x), u_input.d), u_input.d, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -89489i, u_input.d, u_input.d), vec4<i32>(2147483647i, 1i, global0.x, global1.x)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false))), -_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-5896i, 17334i, u_input.d), 0i, func_3(vec3<f32>(-452f, global2.x, 2510f)), global1.x), vec4<i32>(-global0.x, abs(-435i), -108085i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), global0.xz))), countOneBits(-2373i));
    let var_2 = max(global0.x, reverseBits(34824i));
    let var_3 = max(select(reverseBits(vec3<i32>(-33093i, -2147483647i, var_2)), abs(var_1.b.zwz), vec3<bool>(var_1.a, true, false)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 15437u), abs(vec3<u32>(7804u, u_input.c.x, u_input.a))) % vec3<u32>(32u)), var_1.b.www) >> (~vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), u_input.c.wz), vec2<u32>(u_input.b, 24733u)), abs(_wgslsmith_mod_u32(30358u, 1u)), _wgslsmith_mult_u32(0u, ~16543u)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(firstTrailingBit(~u_input.b)), _wgslsmith_f_op_f32(func_2(var_1.a)), 4294967295u, vec4<u32>(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, max(u_input.b, u_input.c.x)), 1u, ~min(16066u, u_input.c.x)) ^ vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 14419u), u_input.c.yz), 1u), _wgslsmith_sub_u32(~u_input.b, u_input.b), u_input.b, ~(u_input.b << (u_input.c.x % 32u))), _wgslsmith_div_vec4_i32(-vec4<i32>(~2147483647i, 17244i, ~global1.x, -19886i), min(_wgslsmith_mod_vec4_i32(-var_1.c, select(vec4<i32>(var_2, 1i, -1i, 0i), vec4<i32>(1i, -2147483647i, 16270i, global1.x), var_1.a)), _wgslsmith_sub_vec4_i32(var_1.c, firstTrailingBit(vec4<i32>(2147483647i, var_2, var_1.d, -2147483647i))))));
}

