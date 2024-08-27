struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

var<private> global2: array<f32, 2> = array<f32, 2>(479f, -1027f);

var<private> global3: array<vec2<u32>, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<i32>) -> vec3<i32> {
    return _wgslsmith_div_vec3_i32(vec3<i32>(arg_3.x, i32(-1i) * -26515i, ~(-2147483647i)), arg_3.xyz);
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    let var_0 = Struct_1(global1.x, _wgslsmith_add_u32(firstTrailingBit(u_input.b), min(min(_wgslsmith_add_u32(51084u, 27451u), u_input.c.x), u_input.b)), 1u);
    let var_1 = vec4<f32>(1341f, -835f, global2[_wgslsmith_index_u32(~u_input.c.x, 2u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~global0.b) << (~global0.c % 32u), 2u)] * global2[_wgslsmith_index_u32(abs(var_0.b) << (reverseBits(var_0.b) % 32u), 2u)]));
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(26388i, 1907i)), 1i, 1i), vec3<i32>(_wgslsmith_mult_i32(func_1(vec3<i32>(-15176i, -74160i, 0i), vec2<u32>(global0.b, global0.c), true, vec4<i32>(arg_1, 0i, -1i, arg_1)).x, ~arg_1), 2147483647i, reverseBits(_wgslsmith_sub_i32(2147483647i, arg_1)))), abs(reverseBits(vec3<i32>(arg_1, -42174i, -32700i))));
    return true;
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    global1 = select(vec4<bool>(any(!global1.yyw) & select(all(vec3<bool>(true, true, true)), global0.c > 49065u, global1.x), true, !(!func_3(arg_0.c, 70801i)), true), !vec4<bool>(false, false, _wgslsmith_f_op_f32(trunc(-150f)) < _wgslsmith_f_op_f32(sign(969f)), (global0.a == true) && all(vec3<bool>(true, global0.a, true))), global1.x);
    let var_0 = arg_0.c;
    let var_1 = false;
    global0 = Struct_1(global1.x, countOneBits(2477u), arg_0.a.x);
    var var_2 = select(vec4<bool>(any(arg_0.b.yx), false, var_1, false), select(select(select(select(vec4<bool>(false, true, true, var_1), vec4<bool>(true, true, false, global0.a), vec4<bool>(arg_0.b.x, false, true, true)), select(vec4<bool>(var_1, arg_0.b.x, var_1, global1.x), vec4<bool>(false, global1.x, false, var_1), global0.a), !vec4<bool>(global1.x, false, false, false)), vec4<bool>(!var_1, global1.x, global1.x, any(global1.wz)), arg_0.b.x), !select(select(vec4<bool>(arg_0.b.x, var_1, var_0.a, true), vec4<bool>(arg_0.b.x, false, var_1, var_1), true), select(vec4<bool>(var_0.a, true, global1.x, false), vec4<bool>(false, false, var_1, var_0.a), global1.x), !vec4<bool>(false, false, var_1, true)), vec4<bool>(global1.x, global0.a, func_3(arg_0.c, abs(63128i)), _wgslsmith_f_op_f32(sign(-565f)) > _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 2u)]))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 2u)] * 787f)) >= _wgslsmith_f_op_f32(f32(-1f) * -710f)) && arg_0.b.x);
    return arg_0.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<i32> {
    global0 = Struct_1(arg_0.x, _wgslsmith_div_u32(max(~_wgslsmith_div_u32(u_input.c.x, u_input.b), ~global0.c), u_input.c.x), ~global0.b);
    global1 = arg_0;
    global3 = array<vec2<u32>, 12>();
    return vec3<i32>(0i, arg_1.x, ~arg_1.x);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: f32) -> vec4<bool> {
    global3 = array<vec2<u32>, 12>();
    global1 = vec4<bool>(!select(!(arg_2.b.x | global0.a), _wgslsmith_add_i32(arg_1.x, 1i) == ~50014i, true), arg_0.b.x, global0.a, arg_0.c.a);
    let var_0 = func_2(Struct_4(arg_0.a, vec3<bool>(true, true, global1.x), func_2(Struct_4(vec3<u32>(11024u, 4294967295u, arg_0.a.x) << (vec3<u32>(arg_2.a.x, 1u, 1u) % vec3<u32>(32u)), select(global1.yxx, arg_0.b, arg_0.b), Struct_3(arg_0.b.x)))));
    var var_1 = ~(~(-2147483647i));
    let var_2 = _wgslsmith_f_op_f32(max(2191f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-701f - arg_3), 1f))))));
    return !vec4<bool>(!select(arg_2.c.a, true, true) & all(!arg_2.b), all(!vec4<bool>(global1.x, false, arg_2.b.x, false)), all(!vec3<bool>(arg_0.c.a, global1.x, arg_0.c.a)), all(select(global1.xx, !global1.zw, select(arg_0.b.zy, arg_2.b.zx, arg_2.b.zz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 281f;
    global1 = select(select(!vec4<bool>(all(vec3<bool>(global0.a, global1.x, false)), !global0.a, 0u < global0.b, global0.a), !vec4<bool>(global0.a, true, select(global1.x, global0.a, true), all(vec2<bool>(global0.a, false))), true), vec4<bool>(true, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(239f, -1974f, global0.a))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(682f + global2[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_div_f32(429f, global2[_wgslsmith_index_u32(4294967295u, 2u)])), false), func_5(Struct_4(firstTrailingBit(select(vec3<u32>(1u, u_input.c.x, 1u), vec3<u32>(global0.b, u_input.c.x, u_input.b), global1.x)), global1.ywx, Struct_3(!global1.x)), _wgslsmith_mod_vec3_i32(func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(40061i, 2147483647i, -11853i), vec3<i32>(-51478i, 2147483647i, -2147483647i), vec3<i32>(-16045i, 1293i, 0i)), _wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(981u, 12u)], vec2<u32>(25844u, u_input.b)), any(global1.xyw), vec4<i32>(1i, 1i, 1i, 1i)), func_4(vec4<bool>(global1.x, false, global1.x, global0.a), vec3<i32>(1i, 1i, 1i), func_2(Struct_4(vec3<u32>(1u, 33332u, u_input.c.x), global1.zyx, Struct_3(global1.x))))), Struct_4(_wgslsmith_mod_vec3_u32(vec3<u32>(72913u, 76875u, 4294967295u) >> (vec3<u32>(global0.b, 12707u, global0.b) % vec3<u32>(32u)), ~vec3<u32>(0u, u_input.a, global0.b)), select(global1.wwy, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, true, true)), func_2(Struct_4(vec3<u32>(global0.b, 4294967295u, global0.c), vec3<bool>(true, global1.x, false), Struct_3(global0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(499f - -161f), _wgslsmith_f_op_f32(-var_0), select(true, true, global0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -926f)), max(_wgslsmith_add_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-14852i, 2147483647i), vec2<i32>(-37854i, 44896i))), _wgslsmith_sub_i32(2147483647i << (global0.c % 32u), i32(-1i) * -16232i)), 1i), ~(i32(-1i) * -12768i));
}

