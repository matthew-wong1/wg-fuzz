struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: vec3<i32>;

var<private> global2: u32 = 34876u;

var<private> global3: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_4) -> f32 {
    var var_0 = -(-21901i << (1u % 32u));
    var var_1 = arg_1;
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1392f)), -786f)) == var_1.a.x, false, !arg_1.b);
    let var_3 = -1089f;
    global3 = Struct_2(vec2<bool>(any(vec2<bool>(false, any(var_2.yx))), var_2.x), ~u_input.d.yz, global3.c);
    return 742f;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = any(!global3.a);
    var var_1 = _wgslsmith_f_op_f32(-global3.c.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-399f * -1000f), Struct_3(vec3<f32>(arg_0.x, arg_0.x, global3.c.a), global3.a.x, arg_0.x, global3.c.c.x), -vec2<i32>(19294i, u_input.e), Struct_4(u_input.a, Struct_3(vec3<f32>(arg_0.x, arg_0.x, -180f), global3.c.c.x, 287f, true), 7788i))), 257f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1294f, -480f) - 582f), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + 1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(824f, arg_0.x, global3.c.a, -385f))))));
    global3 = Struct_2(vec2<bool>(true, all(vec4<bool>(all(vec4<bool>(global3.c.c.x, true, false, true)), global3.a.x, select(true, true, global3.a.x), true))), vec2<u32>(0u, abs(global3.b.x)), global3.c);
    let var_3 = select(vec4<bool>(~_wgslsmith_sub_i32(-68826i, -1i) == max(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, global1.x), vec3<i32>(2147483647i, 0i, global3.c.b))), !(!(global1.x == 2147483647i)), false, global3.c.a < _wgslsmith_f_op_f32(1102f * var_2.x)), select(select(vec4<bool>(global3.a.x, 287f != global3.c.a, global3.c.c.x, any(vec4<bool>(true, global3.a.x, global3.c.c.x, global3.c.c.x))), vec4<bool>(false, all(global3.c.c), true, all(vec2<bool>(global3.c.c.x, global3.a.x))), global3.a.x), !vec4<bool>(global3.c.c.x, true, true, global3.a.x), arg_0.x == _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_div_f32(1102f, global3.c.a)))), !global3.a.x);
    return countOneBits(-25334i);
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_mult_vec2_i32(select(select(abs(-vec2<i32>(global0[_wgslsmith_index_u32(1u, 21u)], global3.c.b)), -min(vec2<i32>(5566i, global1.x), global1.xy), !global3.c.c.xx), _wgslsmith_add_vec2_i32(-(~global1.zz), vec2<i32>(min(42596i, 34893i), -global3.c.b)), global3.c.c.zy), ~vec2<i32>(_wgslsmith_sub_i32(reverseBits(-32547i), u_input.e | global1.x), func_2(vec2<f32>(global3.c.a, global3.c.a))));
    var var_1 = Struct_2(select(global3.a, global3.c.c.xy, any(select(vec4<bool>(true, global3.c.c.x, false, false), vec4<bool>(false, true, global3.c.c.x, false), vec4<bool>(global3.a.x, global3.c.c.x, global3.a.x, true)))), max(~firstLeadingBit(global3.b), global3.b), global3.c);
    global0 = array<i32, 21>();
    var var_2 = global3.c;
    var_0 = vec2<i32>(min(_wgslsmith_div_i32(1i, -var_1.c.b), min(-7273i, _wgslsmith_div_i32(-2147483647i << (global3.b.x % 32u), 2147483647i ^ global1.x))), 20863i);
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(vec3<bool>(true, all(vec4<bool>(true, global3.c.c.x, true, global3.c.c.x)), all(global3.c.c))) | true, !func_1(), !global3.a.x, all(!global3.c.c));
    var_0 = !select(!select(vec4<bool>(false, global3.a.x, global3.a.x, global3.a.x), select(vec4<bool>(false, global3.c.c.x, var_0.x, false), vec4<bool>(true, global3.c.c.x, false, global3.c.c.x), global3.a.x), true), select(select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(true, true, global3.a.x, global3.c.c.x), vec4<bool>(true, false, global3.c.c.x, true), vec4<bool>(var_0.x, var_0.x, true, global3.c.c.x)), false), !(!vec4<bool>(true, global3.a.x, var_0.x, var_0.x)), any(select(vec4<bool>(var_0.x, true, false, global3.a.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, global3.c.c.x, false)))), vec4<bool>(false, !var_0.x & all(vec2<bool>(var_0.x, global3.c.c.x)), false, true));
    let var_1 = 1425f;
    var var_2 = min(global3.b.x, ~4294967295u);
    let var_3 = ~vec3<i32>(_wgslsmith_add_i32(global1.x, -8272i), -(_wgslsmith_sub_i32(global1.x, -2147483647i) ^ global0[_wgslsmith_index_u32(56880u, 21u)]), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1.x, -20127i), -vec3<i32>(u_input.e, 57260i, global3.c.b)), -global3.c.b));
    var var_4 = Struct_2(!(!select(select(vec2<bool>(false, var_0.x), global3.c.c.xx, global3.a.x), select(global3.c.c.xx, vec2<bool>(false, true), var_0.x), !var_0.xw)), global3.b, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), ~(-(var_3.x & var_3.x)), global3.c.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_i32(-u_input.e, abs(-2147483647i), -32649i)), ~38022i, vec2<f32>(454f, var_4.c.a), 2147483647i, abs(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.c.b, 2147483647i, var_3.x) | var_3, var_3)) << ((_wgslsmith_div_vec3_u32(countOneBits(u_input.d), vec3<u32>(var_4.b.x, 4294967295u, u_input.a)) >> (vec3<u32>(0u | global3.b.x, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.x, var_4.b.x), vec2<u32>(global3.b.x, u_input.b))) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

