struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(2147483647i, vec3<f32>(1932f, -269f, 1389f), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec2<i32>(3318i, i32(-2147483648)), -302f));

var<private> global1: array<u32, 21>;

var<private> global2: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> bool {
    var var_0 = global0.b.x;
    let var_1 = Struct_1(vec3<bool>(global0.c.a.x, all(select(global0.c.b, select(vec3<bool>(false, false, global0.c.a.x), global0.c.a, false), !global0.c.a.x)), global0.c.a.x), !global0.c.a, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-global0.c.c.x, 1037i, ~global0.a, u_input.d >> (32234u % 32u)), _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(0i, -2147483647i, u_input.d, 0i))), 7357i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.d) * 1151f)));
    var var_2 = Struct_4(var_1.d > arg_0.b, var_1.d, global0.b.yy);
    let var_3 = ~arg_1 >> ((abs(1u) | arg_1) % 32u);
    let var_4 = select(global0.c.b, vec3<bool>(var_3 <= ~abs(u_input.c), !(!var_2.a), !global0.c.b.x), ~(~arg_1) > _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3, 4294967295u, 1u) << (max(vec3<u32>(5516u, 100375u, global1[_wgslsmith_index_u32(arg_1, 21u)]), vec3<u32>(34125u, global1[_wgslsmith_index_u32(4294967295u, 21u)], 44542u)) % vec3<u32>(32u)), vec3<u32>(u_input.c ^ 4294967295u, u_input.c, u_input.c)));
    return !arg_0.a;
}

fn func_2() -> vec3<bool> {
    var var_0 = u_input.a.ywx;
    var var_1 = Struct_4(global0.c.b.x | (!func_3(Struct_4(false, global0.b.x, vec2<f32>(global0.b.x, -1702f)), u_input.c) && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.x - global0.b.x)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(327f, -169f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(global0.b.x, global0.c.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(-742f, global0.b.x) * global0.b.xx)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, global0.b.x)), global0.b.zx)), global0.c.a.zx)));
    var var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.c.d)))) * 682f) - _wgslsmith_f_op_f32(round(-1498f))));
    let var_4 = firstLeadingBit(reverseBits(vec2<u32>(u_input.c, 1u))) << (vec2<u32>(global1[_wgslsmith_index_u32(abs(u_input.c), 21u)], global1[_wgslsmith_index_u32(~(~u_input.c), 21u)]) % vec2<u32>(32u));
    return select(select(global0.c.b, select(select(vec3<bool>(global0.c.b.x, global0.c.a.x, global0.c.b.x), select(vec3<bool>(var_1.a, true, false), global0.c.a, global0.c.a.x), var_1.a), !(!global0.c.a), !global0.c.a), func_3(Struct_4(all(global0.c.a), _wgslsmith_f_op_f32(select(-413f, -1925f, true)), _wgslsmith_f_op_vec2_f32(trunc(var_1.c))), _wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(~106364u, 21u)]))), vec3<bool>(global0.c.a.x, (func_3(Struct_4(var_1.a, var_1.b, var_1.c), 0u) || true) && func_3(Struct_4(global0.c.a.x, var_3, vec2<f32>(var_1.c.x, -2083f)), 1u), true), vec3<bool>(select(!var_1.a, global0.c.a.x, func_3(Struct_4(false, var_3, vec2<f32>(var_1.b, var_3)), _wgslsmith_clamp_u32(var_4.x, u_input.c, var_4.x))), false, _wgslsmith_f_op_f32(f32(-1f) * -308f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-514f)), -1018f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>) -> bool {
    let var_0 = global0.b.x;
    global1 = array<u32, 21>();
    let var_1 = Struct_1(global0.c.a, func_2(), global0.c.c, global0.b.x);
    let var_2 = Struct_3(var_1.c.x, global0.b, Struct_1(select(global0.c.b, var_1.b, vec3<bool>(!global0.c.b.x, func_2().x, true)), global0.c.a, global0.c.c, -213f));
    var var_3 = !(!vec3<bool>(global0.c.b.x != false, true, false));
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_i32(-36739i, global0.c.c.x, ~(u_input.a.x & ~1i));
    var var_1 = Struct_3(-reverseBits(~0i >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2215f, -1216f, -1231f)))) + _wgslsmith_f_op_vec3_f32(sign(global0.b))), Struct_1(func_2(), vec3<bool>(all(vec2<bool>(arg_2.d.x, true)) && all(arg_2.a), _wgslsmith_mult_i32(u_input.d, var_0) <= u_input.b.x, any(vec4<bool>(global0.c.a.x, arg_1, arg_2.c.x, false))), arg_2.b.xz, global0.b.x));
    global2 = _wgslsmith_add_i32(-18834i, _wgslsmith_add_i32(~var_1.a, _wgslsmith_mod_i32(global0.a, arg_2.b.x)));
    var var_2 = Struct_2(!vec4<bool>(global0.c.a.x | select(arg_1, arg_1, true), arg_1, all(arg_2.c.yyw) & true, u_input.c > 4294967295u), arg_2.b, vec4<bool>(all(arg_2.c), true, global0.c.a.x & !func_1(vec2<u32>(36127u, 0u), vec4<u32>(12275u, 37591u, u_input.c, 53269u)), true), vec3<bool>(true, false, false));
    var_2 = Struct_2(vec4<bool>(true, var_1.c.a.x & arg_2.c.x, ~max(4294967295u, 4294967295u) < ~u_input.c, all(select(vec4<bool>(true, var_1.c.b.x, var_2.c.x, var_1.c.a.x), var_2.a, u_input.c <= u_input.c))), vec4<i32>(-1i) * -(-var_2.b ^ arg_2.b), arg_2.c, func_2());
    return Struct_3(arg_2.b.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(select(var_1.c.d, -487f, true)), _wgslsmith_f_op_f32(-var_1.c.d))))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(global0.b.yy, false, Struct_2(select(select(vec4<bool>(true, global0.c.a.x, global0.c.b.x, global0.c.b.x), vec4<bool>(global0.c.b.x, true, true, global0.c.b.x), all(global0.c.b)), !vec4<bool>(false, true, global0.c.a.x, global0.c.a.x), func_1(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21166u), vec4<u32>(33618u, u_input.c, 4294967295u, 51296u))), ~vec4<i32>(global0.c.c.x, u_input.a.x, 0i, u_input.d) ^ ~u_input.a, !(!select(vec4<bool>(true, true, false, global0.c.b.x), vec4<bool>(true, false, global0.c.b.x, false), vec4<bool>(global0.c.a.x, false, global0.c.b.x, global0.c.b.x))), global0.c.b));
    var var_0 = func_4(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-454f * 334f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -338f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1010f * global0.c.d))))) != -877f, Struct_2(select(!(!vec4<bool>(false, global0.c.b.x, false, false)), vec4<bool>(global0.c.b.x, !global0.c.b.x, global0.c.b.x, global0.c.b.x), !global0.c.a.x && true), vec4<i32>(~(-16867i | u_input.a.x), u_input.d, 2147483647i, firstTrailingBit(_wgslsmith_div_i32(global0.a, u_input.a.x))), vec4<bool>(false, !select(global0.c.a.x, global0.c.a.x, global0.c.b.x), func_3(Struct_4(true, global0.b.x, global0.b.yx), global1[_wgslsmith_index_u32(u_input.c, 21u)] | 56442u), false), global0.c.a)).c;
    global1 = array<u32, 21>();
    var var_1 = Struct_4(true, 513f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.d, global0.b.x)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.b.zy)))))));
    global1 = array<u32, 21>();
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)), all(var_0.b.zx), Struct_2(select(select(!vec4<bool>(var_1.a, true, global0.c.b.x, var_1.a), select(vec4<bool>(false, true, global0.c.a.x, true), vec4<bool>(true, true, true, var_1.a), vec4<bool>(global0.c.a.x, var_0.b.x, false, var_0.a.x)), !vec4<bool>(var_1.a, var_0.b.x, var_0.b.x, false)), select(select(vec4<bool>(var_0.a.x, true, false, true), vec4<bool>(var_0.b.x, var_0.a.x, var_1.a, true), global0.c.a.x), !vec4<bool>(var_0.b.x, global0.c.b.x, false, var_0.b.x), select(vec4<bool>(var_0.b.x, var_0.a.x, true, var_0.a.x), vec4<bool>(true, false, false, true), var_0.a.x)), select(vec4<bool>(var_1.a, true, true, var_0.b.x), vec4<bool>(true, false, true, var_1.a), select(vec4<bool>(var_0.a.x, false, true, false), vec4<bool>(true, true, global0.c.b.x, true), true))), ~vec4<i32>(-var_0.c.x, _wgslsmith_add_i32(u_input.d, -4639i), 1i, firstTrailingBit(global0.c.c.x)), !vec4<bool>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 21u)], 21u)] <= global1[_wgslsmith_index_u32(u_input.c, 21u)], !var_0.b.x, true, true), !var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * _wgslsmith_f_op_f32(select(var_1.b, -1129f, var_0.b.x))))))), 15711i);
}

