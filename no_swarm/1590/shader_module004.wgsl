struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2;

var<private> global2: array<i32, 32>;

var<private> global3: Struct_1 = Struct_1(-47090i, true, vec3<u32>(14067u, 4770u, 589u), vec4<i32>(-1i, -22196i, 1i, -793i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1064f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1205f - global1.b), global1.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(181f, global1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) - vec2<f32>(386f, 1000f)), !vec2<bool>(global1.d.b, true))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(751f, global1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) - vec2<f32>(global1.b, global1.b)))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1133f) - _wgslsmith_f_op_f32(207f * var_0.x)), !(!global3.b))), global1.b, !global3.b)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), global1.b) * -2852f)), global1.b);
    var var_2 = global3.b & select(global1.e.x, global3.b, true);
    global1 = Struct_2(~40035u, -466f, Struct_1(-_wgslsmith_sub_i32(arg_1, arg_0), global3.b, max(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.c.x, global0.x, 4294967295u), vec3<u32>(global3.c.x, global0.x, u_input.c))), reverseBits(vec3<u32>(0u, 0u, u_input.a))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-4851i, global2[_wgslsmith_index_u32(global1.d.c.x, 32u)], -50322i, global3.d.x), vec4<i32>(2147483647i, -21263i, global2[_wgslsmith_index_u32(global3.c.x, 32u)], global3.d.x)), vec4<i32>(global3.a, 48834i, global2[_wgslsmith_index_u32(26471u, 32u)], 1i)), -global3.d ^ -global1.d.d)), Struct_1(min(arg_0, _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, 2147483647i), firstLeadingBit(arg_2))), all(global1.e), global1.c.c, select(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -23412i, arg_1, -1i), min(vec4<i32>(2147483647i, arg_2, arg_0, -16891i), global1.d.d)), ~_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global1.a, 32u)], 2147483647i, arg_0, global1.d.d.x), vec4<i32>(arg_0, global3.a, arg_0, arg_1)), global3.b)), select(vec2<bool>(global1.e.x, true), vec2<bool>(!global3.b, all(select(vec3<bool>(global3.b, global1.d.b, global3.b), vec3<bool>(global1.e.x, global1.d.b, false), true))), true));
    global3 = global1.d;
    return global1.b;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-540i), _wgslsmith_mult_i32(-2147483647i, global3.a)), 6060i), any(vec3<bool>(true, true, true)), ~min(reverseBits(abs(vec3<u32>(4294967295u, global3.c.x, u_input.b))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.x, global1.d.c.x, 55752u, 4294967295u), vec4<u32>(4294967295u, 0u, 13436u, u_input.c)), firstTrailingBit(global3.c.x), 1u)), vec4<i32>(~arg_0.d.x, 2147483647i, _wgslsmith_mult_i32(-global2[_wgslsmith_index_u32(~13036u, 32u)], global2[_wgslsmith_index_u32(~global3.c.x, 32u)] & max(global1.d.d.x, 0i)), -1i));
    var var_1 = !select(select(select(vec3<bool>(true, false, false), select(vec3<bool>(global3.b, global3.b, true), vec3<bool>(global1.e.x, global3.b, arg_0.b), vec3<bool>(true, var_0.b, arg_0.b)), select(vec3<bool>(global3.b, false, var_0.b), vec3<bool>(true, true, arg_0.b), arg_0.b)), select(vec3<bool>(true, global3.b, var_0.b), select(vec3<bool>(true, true, true), vec3<bool>(true, false, global3.b), vec3<bool>(true, true, arg_0.b)), vec3<bool>(true, true, global1.d.b)), true), vec3<bool>(all(global1.e), any(vec4<bool>(true, global3.b, arg_0.b, global3.b)), !var_0.b), false);
    var var_2 = Struct_1(global3.d.x, false, var_0.c, vec4<i32>(0i, 0i & (global1.d.d.x | global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.c.x, 48020u), global0.xy), 32u)]), countOneBits((i32(-1i) * -1i) & -global1.c.a), global1.d.d.x));
    let var_3 = _wgslsmith_div_f32(1379f, 260f);
    var var_4 = global1.e.x;
    return Struct_2(~53892u | var_0.c.x, -225f, Struct_1(abs(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, global3.c.x), 32u)]), any(select(vec4<bool>(true, false, arg_0.b, true), vec4<bool>(global1.c.b, false, false, var_0.b), true)), _wgslsmith_sub_vec3_u32(var_0.c, select(vec3<u32>(4294967295u, u_input.a, 1u), reverseBits(vec3<u32>(global0.x, 58248u, 1u)), vec3<bool>(arg_0.b, var_1.x, false))), _wgslsmith_mult_vec4_i32(-var_0.d, max(vec4<i32>(global1.d.d.x, 34732i, global2[_wgslsmith_index_u32(15493u, 32u)], var_0.a), abs(var_0.d)))), Struct_1(-1i, _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(25940i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), global1.c.d.yy), global2[_wgslsmith_index_u32(~11676u, 32u)])) > var_3, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(var_2.c, var_2.c), ~vec3<u32>(arg_0.c.x, 1u, global3.c.x)), global3.c), ~firstLeadingBit(var_2.d) << ((firstTrailingBit(vec4<u32>(global0.x, 1452u, var_2.c.x, 0u)) & ~vec4<u32>(global0.x, global0.x, var_2.c.x, global0.x)) % vec4<u32>(32u))), !vec2<bool>(!global1.d.b, true));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = func_2(func_2(func_2(Struct_1(abs(0i), arg_0.e.x, ~global3.c, arg_0.c.d)).d).d).d.c;
    var var_0 = ~_wgslsmith_div_u32(~u_input.b, _wgslsmith_mult_u32(38751u ^ global3.c.x, u_input.c ^ global1.d.c.x)) > 4294967295u;
    var var_1 = ~firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~arg_0.c.c, vec3<u32>(global3.c.x, arg_0.a, u_input.b)), ~(~arg_0.c.c)));
    global2 = array<i32, 32>();
    var var_2 = 1178f;
    return Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c.c.x, u_input.c, arg_0.d.c.x, global3.c.x), vec4<u32>(1u, global1.c.c.x, 99u, 84798u), vec4<u32>(u_input.a, 5008u, 1u, 4294967295u)), select(vec4<u32>(0u, 2701u, 0u, u_input.b), vec4<u32>(global0.x, 68205u, 1u, 4294967295u), false)), countOneBits(global1.c.c.x)) ^ _wgslsmith_mult_u32(1u, firstTrailingBit(select(global3.c.x, global0.x, global3.b))), arg_0.b, global1.d, func_2(arg_0.d).d, arg_0.e);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec4<bool> {
    let var_0 = !select(!(!select(vec4<bool>(true, false, arg_1.d.b, global1.e.x), vec4<bool>(global1.e.x, arg_1.e.x, true, arg_2), arg_2)), !(!select(vec4<bool>(arg_2, arg_2, arg_0.c.b, global1.e.x), vec4<bool>(global3.b, false, false, global3.b), global3.b)), select(!select(vec4<bool>(global1.c.b, global1.e.x, arg_0.e.x, arg_1.e.x), vec4<bool>(global3.b, arg_0.c.b, false, true), vec4<bool>(global3.b, true, arg_1.d.b, true)), select(select(vec4<bool>(false, arg_1.c.b, true, false), vec4<bool>(arg_0.d.b, false, global3.b, true), false), !vec4<bool>(true, arg_0.c.b, global3.b, false), !vec4<bool>(false, true, false, arg_0.c.b)), -280f > _wgslsmith_div_f32(1284f, arg_0.b)));
    var var_1 = func_4(Struct_2(46703u, _wgslsmith_f_op_f32(-global1.b), func_2(func_2(func_2(Struct_1(-1i, var_0.x, global1.c.c, vec4<i32>(-1i, 15705i, -7756i, -34188i))).c).c).c, func_2(func_4(func_2(Struct_1(-2147483647i, var_0.x, arg_0.c.c, global3.d))).d).d, vec2<bool>(-513f != _wgslsmith_f_op_f32(-arg_0.b), false))).c;
    global3 = Struct_1(-1i, all(vec4<bool>(func_2(Struct_1(global1.c.a, false, arg_1.d.c, vec4<i32>(-1i, var_1.a, arg_0.d.d.x, -2147483647i))).c.b, var_0.x, all(arg_1.e), arg_0.c.b)), var_1.c, vec4<i32>(-43185i, countOneBits(_wgslsmith_clamp_i32(47834i, max(2147483647i, arg_1.c.d.x), global2[_wgslsmith_index_u32(max(19829u, 62279u), 32u)])), _wgslsmith_add_i32(0i << (global0.x % 32u), ~0i), ~(abs(global1.c.d.x) ^ _wgslsmith_dot_vec4_i32(var_1.d, global3.d))));
    var var_2 = select(select(var_0, select(var_0, !select(var_0, vec4<bool>(arg_0.c.b, arg_2, false, false), vec4<bool>(false, global1.e.x, arg_0.d.b, true)), !(!arg_2)), !(!select(var_0, var_0, false))), var_0, true);
    var_1 = Struct_1(1654i, true, var_1.c, arg_0.c.d);
    return var_0;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = global3.d.ywz;
    global0 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(global3.c, ~global1.d.c, vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(global1.d.c, vec3<u32>(0u, u_input.c, global3.c.x)), global3.c.x)), ~global3.c);
    global0 = ~_wgslsmith_clamp_vec3_u32(global1.d.c, global3.c, global1.d.c << (~global3.c % vec3<u32>(32u))) | abs(global1.d.c);
    global2 = array<i32, 32>();
    var var_1 = global1.c;
    return global1.c;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = Struct_1(abs(global1.c.a), global3.b, ~global1.d.c, global3.d);
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, ~var_0.c.x, global3.c.x, firstLeadingBit(arg_0.c.x)), ~vec4<u32>(_wgslsmith_div_u32(69523u >> (arg_0.c.x % 32u), ~24135u), ~(~70047u), ~select(var_0.c.x, 4128u, false), 72224u));
    global3 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, 1014f))) - vec3<f32>(-549f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-132f))), _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-1450f + 696f)))), func_5(func_4(func_2(global1.c)), Struct_2(1u, _wgslsmith_f_op_f32(-1724f - global1.b), arg_0, arg_0, global1.e), arg_0.b, func_2(arg_0).a << (26618u % 32u)), ~var_0.d.zz);
    let var_2 = min(global0.x, _wgslsmith_mult_u32(global0.x, global3.c.x));
    global2 = array<i32, 32>();
    return arg_0.d.x & -29851i;
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    global1 = func_2(func_6(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1118f, arg_0.b, arg_0.b)), vec3<f32>(arg_0.b, arg_0.b, 1506f))))), func_5(Struct_2(countOneBits(0u), 1235f, func_6(vec3<f32>(global1.b, arg_0.b, -743f), vec4<bool>(true, arg_0.d.b, true, true), global1.c.d.zz), func_2(global1.c).d, global1.e), func_2(Struct_1(global1.c.d.x, arg_0.d.b, vec3<u32>(35693u, u_input.a, 61952u), global1.d.d)), false, 43012u), ~(~(~vec2<i32>(global3.a, global2[_wgslsmith_index_u32(global3.c.x, 32u)])))));
    var var_0 = arg_0;
    var var_1 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.b - 1000f), _wgslsmith_f_op_f32(min(global1.b, arg_0.b)), -976f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1436f, 364f, -2636f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(486f, var_0.b, 386f), vec3<f32>(842f, var_0.b, global1.b))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-649f, -1919f, global1.b) * vec3<f32>(-633f, -1179f, global1.b)))))), !vec4<bool>(_wgslsmith_dot_vec3_u32(global3.c, vec3<u32>(7735u, global3.c.x, 405u)) > 38498u, true, true, !(!global3.b)), ~(func_2(Struct_1(global3.d.x, false, var_0.d.c, vec4<i32>(global3.a, global2[_wgslsmith_index_u32(arg_0.a, 32u)], var_0.c.d.x, global3.a))).c.d.xw | reverseBits(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 32u)]))));
    global1 = func_4(func_4(func_2(var_0.c)));
    var var_2 = func_2(Struct_1(4084i, false, ~arg_0.d.c, vec4<i32>(~(-35870i), -6266i, 1i, var_1.a >> (global1.c.c.x % 32u)) | (_wgslsmith_mod_vec4_i32(vec4<i32>(global1.d.d.x, -5539i, 5975i, arg_0.c.d.x), vec4<i32>(-1i, 5736i, -1i, var_1.d.x)) & arg_0.d.d))).c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_2(0u, -125f, Struct_1(abs(1i) & _wgslsmith_dot_vec2_i32(global1.c.d.xy, global3.d.zz), true, vec3<u32>(44895u, _wgslsmith_sub_u32(global3.c.x, global1.d.c.x), abs(global0.x)), vec4<i32>(firstTrailingBit(global1.c.a), _wgslsmith_div_i32(global1.c.a, global1.d.d.x), func_1(Struct_1(2147483647i, global3.b, global3.c, global3.d), 6394i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global3.d.x, global1.c.a, global3.d.x), global1.d.d))), func_4(Struct_2(_wgslsmith_sub_u32(global3.c.x, global1.d.c.x), 985f, func_6(vec3<f32>(-1000f, global1.b, global1.b), vec4<bool>(global3.b, false, global1.d.b, global1.e.x), vec2<i32>(global2[_wgslsmith_index_u32(global3.c.x, 32u)], global2[_wgslsmith_index_u32(global3.c.x, 32u)])), global1.d, vec2<bool>(global1.d.b, false))).d, !vec2<bool>(true, !global3.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(floor(2278f))))), global1.b, func_7(var_0).b));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(var_1.ywz, vec3<f32>(var_0.b, var_0.b, -2384f))))))))));
    var var_3 = ~global3.c.x;
    var var_4 = ~(~vec4<u32>(global0.x, global3.c.x, global0.x << (~var_0.d.c.x % 32u), 0u));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-421f, var_1.x, global1.b, -2004f), vec4<f32>(985f, 306f, var_1.x, var_0.b), vec4<bool>(false, false, false, false)))))))), vec4<f32>(-194f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), 279f, func_2(Struct_1(-52449i, false, abs(global1.d.c), max(global3.d, vec4<i32>(-2147483647i, -1i, var_0.d.a, global3.d.x)))).b));
    let var_5 = Struct_2(67116u, 1f, Struct_1(abs(42569i), global3.b, ~global3.c, vec4<i32>(max(var_0.d.d.x, 0i) ^ (global2[_wgslsmith_index_u32(1u, 32u)] ^ global2[_wgslsmith_index_u32(var_4.x, 32u)]), select(~global2[_wgslsmith_index_u32(global1.a, 32u)], -19660i, func_5(Struct_2(global1.a, 148f, Struct_1(-1i, false, vec3<u32>(49471u, u_input.c, 41796u), vec4<i32>(global3.a, global2[_wgslsmith_index_u32(u_input.c, 32u)], -8200i, global3.d.x)), Struct_1(global2[_wgslsmith_index_u32(0u, 32u)], global1.d.b, vec3<u32>(var_0.a, 4294967295u, 4294967295u), vec4<i32>(global1.d.a, 0i, global2[_wgslsmith_index_u32(u_input.a, 32u)], -1i)), global1.e), var_0, global1.e.x, 1u).x), global2[_wgslsmith_index_u32(var_0.c.c.x, 32u)], var_0.d.d.x)), Struct_1(~2147483647i, !(func_7(Struct_2(global1.c.c.x, 1432f, var_0.d, var_0.c, var_0.e)).e.x || true), func_2(func_7(func_7(Struct_2(var_0.c.c.x, 978f, Struct_1(global2[_wgslsmith_index_u32(var_0.c.c.x, 32u)], var_0.c.b, vec3<u32>(var_0.a, 0u, 1u), vec4<i32>(2147483647i, var_0.c.d.x, global1.d.a, -2147483647i)), Struct_1(global3.a, true, var_4.zzw, global3.d), global1.e))).c).c.c, vec4<i32>(global3.a, 3120i, ~2147483647i, _wgslsmith_sub_i32(global1.d.d.x, global2[_wgslsmith_index_u32(u_input.a, 32u)])) | countOneBits(global3.d)), select(vec2<bool>(_wgslsmith_f_op_f32(-2192f + 896f) >= _wgslsmith_f_op_f32(global1.b - 734f), _wgslsmith_f_op_f32(var_1.x + -174f) < _wgslsmith_f_op_f32(max(-1130f, -145f))), !global1.e, global1.d.a == 22741i));
    let var_6 = Struct_1(-2842i, var_0.e.x, firstLeadingBit(var_4.zwz), _wgslsmith_mult_vec4_i32(vec4<i32>(var_5.d.d.x, -21182i, global1.c.d.x, _wgslsmith_sub_i32(17995i, global2[_wgslsmith_index_u32(var_4.x, 32u)]) ^ func_1(Struct_1(global2[_wgslsmith_index_u32(var_0.a, 32u)], true, global3.c, vec4<i32>(global1.d.a, 1i, global1.c.a, global2[_wgslsmith_index_u32(28100u, 32u)])), 1i)), func_7(func_4(func_2(var_0.c))).d.d));
    var_4 = vec4<u32>(_wgslsmith_sub_u32(1u, reverseBits(_wgslsmith_div_u32(global0.x ^ 1u, 56016u))), _wgslsmith_sub_u32(1u, reverseBits(select(global0.x, 4294967295u, false))) << (~((global1.d.c.x | 17657u) & 0u) % 32u), global1.c.c.x, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f * -440f)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2657f, -1263f)))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(53944u, 43413u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(var_5.d.c.x, 74366u, var_4.x, global3.c.x), vec4<u32>(60331u, var_0.c.c.x, 20226u, global0.x)), ~vec4<u32>(global3.c.x, var_5.d.c.x, 0u, 0u)) & min(~vec4<u32>(global1.c.c.x, 4294967295u, 4294967295u, global0.x), min(vec4<u32>(0u, global0.x, var_6.c.x, var_5.a), vec4<u32>(1u, 127421u, var_4.x, u_input.a))), abs(~select(vec4<u32>(var_0.c.c.x, global0.x, 17842u, var_0.c.c.x), vec4<u32>(0u, 0u, 1u, global1.c.c.x), global1.d.b))));
}

