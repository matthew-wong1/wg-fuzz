struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = Struct_1(all(arg_1), arg_3, i32(-1i) * -76279i);
    let var_1 = reverseBits(abs(-10013i | abs(~global0[_wgslsmith_index_u32(u_input.b.x, 20u)])));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1357f))), arg_3);
    var var_3 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.a, 51956u), vec2<u32>(u_input.b.x, u_input.a), arg_1.xx), _wgslsmith_add_vec2_u32(u_input.b.zx, max(u_input.b.yx, u_input.b.xx)), ~(~u_input.b.yy)), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(106173u, 4294967295u), u_input.b.yz))), ~u_input.b.xy);
    global0 = array<i32, 20>();
    return 225f;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -767f), _wgslsmith_f_op_f32(f32(-1f) * -176f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-732f, -476f), arg_0.a.www, arg_0, 663f)))) >= -136f, true, false, false);
    let var_1 = firstLeadingBit(~(~u_input.b));
    let var_2 = Struct_1(any(arg_0.a.yxw), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -787f)))), 1i);
    var var_3 = var_2.b;
    let var_4 = Struct_3(vec4<bool>(true, !(!var_0.x), var_2.a, true));
    return Struct_3(var_0);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool) -> vec2<i32> {
    let var_0 = i32(-1i) * -1i;
    global0 = array<i32, 20>();
    let var_1 = Struct_1(u_input.b.x < max(~(~u_input.b.x), _wgslsmith_clamp_u32(0u, u_input.b.x, 4294967295u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(982u, u_input.a, 54346u), u_input.b) % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1611f, -1839f)), !vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0, _wgslsmith_f_op_f32(354f + 1000f)))))), -10480i);
    global0 = array<i32, 20>();
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(-(select(vec4<i32>(-6634i, 0i, var_0, var_1.c), vec4<i32>(-22945i, -25186i, -1i, -1i), arg_0.a) | max(vec4<i32>(var_0, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec4<i32>(global0[_wgslsmith_index_u32(13604u, 20u)], var_1.c, 25720i, var_1.c))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 18263i), vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], -16040i, var_0)) >> (vec4<u32>(0u, 4294967295u, u_input.a, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(0i, _wgslsmith_clamp_i32(-8746i, -20955i, 25869i), var_1.c | -1i, global0[_wgslsmith_index_u32(0u, 20u)]), -reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(61089u, 20u)], var_1.c, var_1.c, 1i)))), ~firstTrailingBit(0i) >> (_wgslsmith_add_u32(u_input.a ^ 4294967295u, _wgslsmith_clamp_u32(select(43779u, u_input.b.x, false), ~22841u, countOneBits(15020u))) % 32u), var_1.c, ~(-2147483647i));
    return _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(-select(var_2.yw, select(vec2<i32>(var_2.x, var_2.x), var_2.ww, vec2<bool>(false, var_1.a)), !arg_1), ~vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.a, 20u)] << (1u % 32u)), var_2.xx), var_2.zz);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(~22052u), 20u)];
    var var_1 = arg_1.xy;
    var var_2 = Struct_1(any(vec4<bool>(true, true, true, true)) && func_2(Struct_3(vec4<bool>(false, false, false, false))).a.x, -2832f, -22137i);
    let var_3 = -arg_1.x ^ -45410i;
    let var_4 = func_2(func_2(func_2(func_2(Struct_3(vec4<bool>(var_2.a, var_2.a, var_2.a, true))))));
    return Struct_3(select(func_2(func_2(var_4)).a, var_4.a, var_4.a));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = 1u;
    let var_1 = func_5(_wgslsmith_mult_vec2_i32(func_4(func_2(Struct_3(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a))), func_2(func_2(Struct_3(vec4<bool>(true, true, arg_0.a, arg_0.a)))).a.yz, !func_2(Struct_3(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a))).a.x), func_4(Struct_3(!vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)), !select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, true)), true)), ~min(arg_3, arg_3));
    let var_2 = func_5(arg_3.zx, vec3<i32>(-1i, -_wgslsmith_add_i32(2147483647i, 0i), ~arg_0.c));
    var var_3 = any(vec4<bool>(true, false, false, any(var_2.a)));
    var var_4 = !vec2<bool>(var_2.a.x, all(!var_2.a));
    return -1000f;
}

fn func_6(arg_0: vec2<u32>, arg_1: f32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 20u)] ^ max(abs(i32(-1i) * -257i), 2147483647i);
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    let var_1 = vec2<i32>(-var_0, ~(-(countOneBits(58084i) << (~u_input.b.x % 32u))));
    return -1132f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(u_input.b.xz | _wgslsmith_clamp_vec2_u32(vec2<u32>(12466u, 4294967295u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(false, 524f, global0[_wgslsmith_index_u32(0u, 20u)]), 1i, vec4<i32>(global0[_wgslsmith_index_u32(55759u, 20u)], global0[_wgslsmith_index_u32(5086u, 20u)], 31725i, global0[_wgslsmith_index_u32(u_input.a, 20u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 624i, 1i))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-149f)))))));
    var var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(var_0.x)))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(475f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - var_0.x))), vec3<bool>(true, true, true), func_2(Struct_3(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-168f, 503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(600f * 157f), _wgslsmith_f_op_f32(-819f * var_0.x), var_0.x == 981f)) * var_0.x)))));
    var var_2 = _wgslsmith_sub_vec2_u32(abs(vec2<u32>(abs(u_input.b.x) & ~32420u, u_input.a | ~u_input.a)), u_input.b.yx);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(var_2.x, 20u)])), ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 70467i)) ^ firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(var_2.x, 20u)], -72i))), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, 1i)), vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_2.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_2.x, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]), -vec2<i32>(global0[_wgslsmith_index_u32(33490u, 20u)], 1i))) | vec2<i32>(2147483647i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 20u)] << (1u % 32u), global0[_wgslsmith_index_u32(~u_input.a, 20u)])), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1452f, var_0.x), vec2<f32>(var_0.x, 865f), false)), vec2<f32>(-559f, var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(916f, -1194f) - vec2<f32>(var_0.x, 485f)))))), _wgslsmith_dot_vec3_u32(u_input.b, abs(reverseBits(vec3<u32>(var_2.x, 57328u, var_2.x)))), vec4<f32>(1247f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(204f + var_0.x), -1136f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x)) - -533f), -1000f));
}

