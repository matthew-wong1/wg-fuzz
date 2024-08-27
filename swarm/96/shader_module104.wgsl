struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(0u, 0u, 38385u), vec3<f32>(-367f, -544f, -825f));

var<private> global1: bool = true;

var<private> global2: array<bool, 30>;

var<private> global3: i32 = -10885i;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    var var_0 = !(!(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 30u)], global2[_wgslsmith_index_u32(2144u, 30u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(78436u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(29176u, 30u)], true), global2[_wgslsmith_index_u32(64024u, 30u)]), !vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(81949u, 30u)]), false)));
    global3 = 2147483647i;
    var var_1 = all(select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, global2[_wgslsmith_index_u32(u_input.e, 30u)]), vec4<bool>(false, false, true, true), vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(global0.a.x, 30u)], true, global2[_wgslsmith_index_u32(0u, 30u)]))), vec4<bool>(all(var_0.wy), var_0.x, false && global2[_wgslsmith_index_u32(global0.a.x, 30u)], global0.a.x <= u_input.e), true)) && global2[_wgslsmith_index_u32(_wgslsmith_div_u32(23503u, _wgslsmith_clamp_u32(0u, abs(25683u) ^ global0.a.x, 4294967295u)), 30u)];
    var_0 = vec4<bool>(!var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - -130f) * _wgslsmith_f_op_f32(f32(-1f) * -497f)), global0.b.x, any(!vec2<bool>(true, var_0.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.x, global0.b.x)) + global0.b.x) + 2268f), select(true, all(vec2<bool>(true, global2[_wgslsmith_index_u32(global0.a.x, 30u)] && false)), true), global2[_wgslsmith_index_u32(global0.a.x, 30u)]);
    global2 = array<bool, 30>();
    return !vec3<bool>(var_0.x, var_0.x & var_0.x, true);
}

fn func_2() -> Struct_1 {
    var var_0 = select(!select(!select(vec3<bool>(false, global2[_wgslsmith_index_u32(global0.a.x, 30u)], global2[_wgslsmith_index_u32(global0.a.x, 30u)]), vec3<bool>(global2[_wgslsmith_index_u32(global0.a.x, 30u)], global2[_wgslsmith_index_u32(global0.a.x, 30u)], true), global2[_wgslsmith_index_u32(global0.a.x, 30u)]), select(func_3(), vec3<bool>(true, true, true), func_3()), !any(vec2<bool>(true, true))), !(!func_3()), true);
    var var_1 = Struct_2(reverseBits(reverseBits(global0.a)), global0.b);
    let var_2 = _wgslsmith_f_op_f32(-global0.b.x);
    let var_3 = vec3<bool>(true, !(false && var_0.x), true);
    var var_4 = Struct_1(_wgslsmith_sub_vec4_i32(u_input.d, ~(select(u_input.c, u_input.c, vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 30u)], true, var_0.x)) ^ u_input.d)));
    return Struct_1(max(vec4<i32>(-84011i, _wgslsmith_sub_i32(~u_input.c.x, ~u_input.b), var_4.a.x, var_4.a.x), vec4<i32>(select(1i, var_4.a.x, global2[_wgslsmith_index_u32(116697u, 30u)]) >> (var_1.a.x % 32u), countOneBits(var_4.a.x), -u_input.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.a.x, 9142u), vec3<u32>(var_1.a.x, 1u, var_1.a.x)) % 32u), countOneBits(var_4.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, u_input.e), vec3<u32>(4294967295u, u_input.e, 0u)) << (global0.a % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b.x, 1193f, global2[_wgslsmith_index_u32(0u, 30u)])) * 694f)), _wgslsmith_f_op_f32(-arg_3.x)));
    var var_1 = ~var_0.a;
    let var_2 = !(!(!((var_0.b.x <= var_0.b.x) && !global2[_wgslsmith_index_u32(var_0.a.x, 30u)])));
    var var_3 = Struct_2(_wgslsmith_clamp_vec3_u32(var_0.a, var_0.a, ~reverseBits(vec3<u32>(global0.a.x, u_input.a.x, 0u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1879f, -494f, arg_3.x))), vec3<f32>(global0.b.x, -150f, _wgslsmith_f_op_f32(exp2(arg_3.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, global0.b.x, arg_3.x) * global0.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 1762f, -208f) + vec3<f32>(-1690f, -938f, 106f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, -531f, arg_3.x) + arg_3.ywy)))))));
    let var_4 = select(vec3<bool>(!var_2, var_2, true), !select(vec3<bool>(var_2, true, all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], var_2))), func_3(), (arg_2 | arg_2) > arg_1.x), global2[_wgslsmith_index_u32(0u, 30u)]);
    return u_input.c;
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = global0.b;
    let var_1 = Struct_1(~func_4(func_2(), -vec3<i32>(-1i, 58579i, u_input.d.x), min(1i, -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -408f, global0.b.x, -124f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(847f, var_0.x, 215f, var_0.x))))));
    var var_2 = global0.b;
    var var_3 = Struct_2(global0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(_wgslsmith_f_op_f32(-359f - 865f), _wgslsmith_f_op_f32(sign(1215f)), _wgslsmith_f_op_f32(min(var_0.x, 1122f)))), _wgslsmith_f_op_vec3_f32(-global0.b)));
    let var_4 = _wgslsmith_div_i32(2147483647i | (_wgslsmith_mod_i32(33589i, ~2147483647i) ^ var_1.a.x), u_input.d.x);
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(global0.b.x <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -551f))));
    global0 = Struct_2(global0.a, global0.b);
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, min(u_input.b, func_1(91963u)), 47i), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, 2147483647i), -u_input.c.x, 0i), vec3<i32>(-u_input.c.x, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 21243i), u_input.c.zyz)))) << (global0.a % vec3<u32>(32u));
    let var_1 = !func_3();
    var var_2 = Struct_2(~global0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(global0.b)))), global0.b, !select(vec3<bool>(var_1.x, true, var_1.x), var_1, true))));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~abs(1u), _wgslsmith_div_u32(13787u, 13214u), ~countOneBits(_wgslsmith_add_u32(~26675u, ~u_input.a.x))), 30u)];
    global1 = false;
    var var_4 = !vec4<bool>(reverseBits(firstLeadingBit(global0.a.x)) != u_input.a.x, !any(!vec4<bool>(var_1.x, var_1.x, global2[_wgslsmith_index_u32(global0.a.x, 30u)], global2[_wgslsmith_index_u32(1u, 30u)])), var_1.x, false);
    var var_5 = 4294967295u << (~4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(8155i, ~(~(~vec4<u32>(var_2.a.x, u_input.e, global0.a.x, 43285u) ^ ~vec4<u32>(global0.a.x, var_2.a.x, var_2.a.x, 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-452f, var_2.b.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-128f, 1110f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, -692f), vec2<f32>(188f, var_2.b.x)) * _wgslsmith_f_op_vec2_f32(global0.b.xy + global0.b.xz)))), vec3<f32>(1f, _wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(-238f * _wgslsmith_f_op_f32(abs(1000f))))), 821f));
}

