struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, true, vec4<bool>(true, false, true, false));

var<private> global1: array<Struct_4, 25>;

var<private> global2: array<u32, 29>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_mod_u32(arg_2.x, arg_2.x);
    global1 = array<Struct_4, 25>();
    var var_1 = arg_1.b;
    var var_2 = Struct_3(-16717i >= (1i << (global2[_wgslsmith_index_u32(var_0, 29u)] % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3, 584f))) + 1000f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-128f, 1489f)), arg_3)) + _wgslsmith_div_f32(-1203f, _wgslsmith_f_op_f32(arg_3 + 312f))), global0.c);
    var var_3 = select(!(!vec4<bool>(false, global0.b, true, true)), vec4<bool>(arg_0.c.x, all(!(!var_2.c.ww)), var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -481f) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3)))), !(!select(!vec4<bool>(false, var_2.b, true, global0.a), select(vec4<bool>(arg_0.a, var_2.b, false, true), vec4<bool>(true, var_2.a, false, true), true), !global0.c)));
    return var_0;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_4) -> i32 {
    var var_0 = select(vec2<i32>(~_wgslsmith_div_i32(~1i, 2147483647i), arg_0), arg_2.c, any(select(select(vec3<bool>(false, arg_1, true), !vec3<bool>(global0.a, global0.a, true), !vec3<bool>(arg_1, arg_2.b, global0.b)), global0.c.xyz, vec3<bool>(!arg_2.b, arg_2.c.x > 0i, !arg_2.a))));
    var var_1 = !(!vec2<bool>(arg_1, arg_2.b));
    let var_2 = _wgslsmith_mult_u32(func_3(Struct_3(all(!global0.c), true, select(global0.c, global0.c, vec4<bool>(false, true, true, true))), Struct_3(all(!vec2<bool>(var_1.x, false)), arg_2.b, vec4<bool>(var_1.x, arg_1, arg_2.a, false)), vec3<u32>(~63378u, abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22834u, 29u)], 29u)]), ~4294967295u) | firstTrailingBit(reverseBits(vec3<u32>(0u, 0u, 0u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(229f)) - -1135f)))), u_input.d);
    var var_3 = Struct_4(false, !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(144f * 1505f))) > _wgslsmith_div_f32(502f, _wgslsmith_f_op_f32(-848f + 1000f))), -vec2<i32>(~reverseBits(-10403i), arg_0));
    global2 = array<u32, 29>();
    return _wgslsmith_mod_i32(_wgslsmith_mult_i32(46892i, 1i), arg_0);
}

fn func_1() -> Struct_4 {
    global1 = array<Struct_4, 25>();
    let var_0 = Struct_3(!global0.c.x, -_wgslsmith_mult_i32(2147483647i, 43308i << (u_input.c % 32u)) > func_2(660i, !(global0.b == false), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 37462u), 25u)]), vec4<bool>(false, global0.c.x, false, true));
    let var_1 = Struct_2(Struct_1(~1i, vec2<bool>(true, !select(false, global0.b, true)), countOneBits(-vec2<i32>(16009i, 0i))), ~(~vec2<u32>(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 29u)], 29u)], global2[_wgslsmith_index_u32(53889u, 29u)]), 30868u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1388f) - -458f))));
    var var_2 = vec3<bool>(all(select(vec4<bool>(all(vec2<bool>(var_0.a, var_1.a.b.x)), !var_1.a.b.x, true, !var_0.b), vec4<bool>(var_0.c.x, global0.a & true, true, true), any(vec4<bool>(false, true, false, var_1.a.b.x)))), all(select(!(!var_0.c.wzw), vec3<bool>(true, var_1.b.x == var_1.b.x, true), var_0.c.wzz)), false);
    let var_3 = var_1.a;
    return global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~40031u, 29u)], 25u)];
}

fn func_4(arg_0: Struct_4) -> vec3<i32> {
    var var_0 = select(select(global0.c.xx, vec2<bool>((0u ^ global2[_wgslsmith_index_u32(4716u, 29u)]) <= abs(26634u), !arg_0.a || true), all(vec3<bool>(!global0.c.x, any(vec3<bool>(global0.c.x, true, global0.a)), true))), vec2<bool>(true, true), vec2<bool>(true, true));
    let var_1 = Struct_1(16139i, vec2<bool>(true, false), arg_0.c);
    var_0 = var_1.b;
    let var_2 = _wgslsmith_f_op_f32(759f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f * _wgslsmith_f_op_f32(f32(-1f) * -497f))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32((vec2<i32>(-2147483647i, 20179i) | vec2<i32>(4698i, var_1.a)) >> (countOneBits(vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60528u, 29u)], 29u)])) % vec2<u32>(32u)), max(vec2<i32>(arg_0.c.x, arg_0.c.x), _wgslsmith_mod_vec2_i32(var_1.c, vec2<i32>(arg_0.c.x, -21603i)))), !(!select(vec2<bool>(arg_0.b, false), var_1.b, true)), arg_0.c), abs(select(~firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)], 1097u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 29191u), vec2<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 29u)])), var_1.b.x)), _wgslsmith_f_op_f32(-var_2));
    return vec3<i32>(1i, firstLeadingBit(countOneBits(-2147483647i)) >> ((min(u_input.c, u_input.c) >> (max(56819u, ~43581u) % 32u)) % 32u), abs(arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 29>();
    let var_0 = _wgslsmith_mod_vec3_i32(func_4(func_1()), vec3<i32>(2147483647i, 26873i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, 2147483647i, 0i, 2147483647i)), max(-vec4<i32>(1i, -18123i, -24729i, -1i), ~vec4<i32>(-21998i, -31739i, -8530i, 0i)))));
    var var_1 = Struct_1(-_wgslsmith_mod_i32(22293i, var_0.x), select(global0.c.xy, global0.c.xw, any(select(!vec2<bool>(global0.c.x, true), global0.c.zx, global0.c.yx))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(36129i, 0i), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(var_0.zy, vec2<i32>(-1i, 1i)), -var_0.zy, _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(24985i, 4179i)))));
    var_1 = Struct_1(var_0.x, !var_1.b, var_0.yz);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(150f * 1536f) + -1498f))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)), -1000f, -712f, -118f);
    global0 = Struct_3(false, func_1().b || true, select(select(global0.c, !vec4<bool>(false, var_1.b.x, false, var_1.b.x), global0.c), !(!vec4<bool>(global0.c.x, false, var_1.b.x, var_1.b.x)), global0.a));
    var_1 = Struct_1(2147483647i, var_1.b, -_wgslsmith_mod_vec2_i32(min(var_1.c, vec2<i32>(var_1.a, var_0.x)), select(var_0.xz & vec2<i32>(var_1.c.x, var_0.x), var_0.xx, !global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

