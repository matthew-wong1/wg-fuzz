struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, false, true, true, true, true, false, false, false, true, false, true, false, true, true, false, false, true, true, true, true, true, true);

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(2147483647i, vec4<u32>(102492u, 0u, 0u, 4294967295u), 123771u), Struct_3(-11248i, vec4<u32>(4294967295u, 5332u, 1u, 0u), 4294967295u), Struct_3(0i, vec4<u32>(0u, 44943u, 15343u, 1u), 0u), Struct_3(17576i, vec4<u32>(10796u, 10557u, 73832u, 0u), 31846u), Struct_3(-20641i, vec4<u32>(51076u, 0u, 1u, 21008u), 31433u), Struct_3(5124i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 49803u), Struct_3(-37848i, vec4<u32>(0u, 81036u, 4294967295u, 7865u), 24980u), Struct_3(-42603i, vec4<u32>(44912u, 1u, 76468u, 4294967295u), 1u), Struct_3(2147483647i, vec4<u32>(18077u, 4294967295u, 123409u, 4294967295u), 1u), Struct_3(0i, vec4<u32>(4294967295u, 39590u, 6408u, 0u), 0u), Struct_3(i32(-2147483648), vec4<u32>(1u, 23163u, 4294967295u, 8882u), 0u), Struct_3(-11594i, vec4<u32>(13805u, 1u, 35994u, 0u), 4294967295u));

var<private> global2: array<vec4<f32>, 15>;

var<private> global3: array<Struct_5, 4>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    global1 = array<Struct_3, 12>();
    return !global0[_wgslsmith_index_u32(abs(~_wgslsmith_mod_u32(u_input.a, ~4294967295u)), 23u)];
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = select(arg_3.yz, !arg_3.yx, vec2<bool>(select(!(-136i >= u_input.d), global0[_wgslsmith_index_u32(u_input.e.x, 23u)] | select(global0[_wgslsmith_index_u32(u_input.e.x, 23u)], true, arg_0), !(u_input.e.x == u_input.e.x)), any(vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 23u)], any(vec3<bool>(false, false, arg_3.x)), arg_0))));
    global2 = array<vec4<f32>, 15>();
    let var_1 = Struct_4(Struct_1(min(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), u_input.b, vec2<i32>(14159i, 10144i)), firstLeadingBit(u_input.b)), vec2<i32>(~1i, 31468i)), arg_1.x, select(!(!arg_3.xx), vec2<bool>(any(vec2<bool>(arg_3.x, true)), !arg_0), true)), Struct_1(vec2<i32>(-1i) * -vec2<i32>(u_input.d, u_input.d), -627f, select(vec2<bool>(false | var_0.x, false && var_0.x), var_0, arg_0)), ~(_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, u_input.c.x), u_input.c.x) << (~(u_input.a << (10827u % 32u)) % 32u)), u_input.b.x, Struct_2(Struct_1(u_input.c.yw, -1048f, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-916f - 182f), _wgslsmith_f_op_f32(ceil(390f)), -244f, _wgslsmith_f_op_f32(step(-1179f, arg_2.x))))));
    let var_2 = 4294967295u;
    let var_3 = Struct_1(vec2<i32>(u_input.c.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(min(u_input.c, u_input.c), u_input.c), -1i)), arg_1.x, !select(vec2<bool>(var_1.a.c.x, true && var_1.e.a.c.x), vec2<bool>(u_input.b.x == var_1.d, !arg_3.x), arg_3.zy));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-243f * 546f) - _wgslsmith_f_op_f32(-var_3.b));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = !select(vec3<bool>(true, any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true, global0[_wgslsmith_index_u32(u_input.a, 23u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 23u)], true, global0[_wgslsmith_index_u32(u_input.e.x, 23u)], false), global0[_wgslsmith_index_u32(u_input.a, 23u)])), global0[_wgslsmith_index_u32(u_input.e.x, 23u)]), vec3<bool>(u_input.c.x <= _wgslsmith_div_i32(u_input.c.x, arg_0.x), global0[_wgslsmith_index_u32(~(~1u), 23u)], u_input.a != ~1u), true);
    var_0 = vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(~u_input.a ^ ~u_input.a, 23u)], select(var_0.x, true & global0[_wgslsmith_index_u32(u_input.a, 23u)], func_2()), !global0[_wgslsmith_index_u32(select(39872u, 4294967295u, var_0.x), 23u)])), true, 868f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(953f + 920f), 1635f, true)));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, 1i), -vec2<i32>(arg_0.x, -2147483647i))), -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, arg_0.x), u_input.b, vec2<i32>(u_input.b.x, 0i)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(false, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1086f, 364f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(628f, 649f, 2641f, -448f))), vec3<bool>(all(vec4<bool>(var_0.x, true, false, var_0.x)), false, any(vec3<bool>(true, global0[_wgslsmith_index_u32(22536u, 23u)], true))))))), vec2<bool>(func_2(), !global0[_wgslsmith_index_u32(1u, 23u)]));
    var var_2 = Struct_3(-(~abs(var_1.a.x)), vec4<u32>(_wgslsmith_add_u32(abs(firstTrailingBit(4294967295u)), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a) & ~4294967295u), u_input.e.x, abs(u_input.a) ^ _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 0u, u_input.a), 0u), _wgslsmith_div_u32(1u, ~0u)), 4294967295u);
    var_1 = Struct_1(_wgslsmith_div_vec2_i32(select(vec2<i32>(-1i >> (var_2.b.x % 32u), min(arg_0.x, 2147483647i)), abs(~vec2<i32>(-3311i, -20726i)), all(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_1.c.x, false, var_0.x), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 23u)], var_0.x, var_0.x)))), max(vec2<i32>(0i, ~arg_0.x), u_input.c.zx)), _wgslsmith_f_op_f32(567f * var_1.b), !select(select(!vec2<bool>(var_1.c.x, global0[_wgslsmith_index_u32(u_input.a, 23u)]), var_0.zy, var_1.c), vec2<bool>(false, !var_0.x), var_0.zz));
    return _wgslsmith_f_op_f32(select(872f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.b, 1927f))), vec4<f32>(var_1.b, var_1.b, 240f, -257f), select(vec3<bool>(var_1.c.x, var_1.c.x, var_0.x), vec3<bool>(var_1.c.x, global0[_wgslsmith_index_u32(0u, 23u)], true), true)))), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.b)), _wgslsmith_f_op_f32(var_1.b * -1000f)))))), !all(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 23>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(reverseBits(vec2<i32>(-1i, u_input.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2263f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(876f, 188f) + _wgslsmith_f_op_f32(2145f * 1566f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_mult_i32(-381i, -u_input.b.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(-2147483647i, u_input.b.x)), -19168i ^ (-2147483647i >> (u_input.a % 32u))), u_input.d, i32(-1i) * -u_input.d), abs(vec2<i32>(i32(-1i) * -13251i, -(2147483647i & u_input.b.x))));
}

