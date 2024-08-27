struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<f32> = vec3<f32>(1153f, -792f, 398f);

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1i, 535i, vec3<bool>(true, false, false)), Struct_1(i32(-2147483648), -49190i, vec3<bool>(false, false, false)), Struct_1(1i, 42991i, vec3<bool>(true, false, false)), Struct_1(-15808i, -17249i, vec3<bool>(false, false, false)));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(2147483647i, 2147483647i, vec3<bool>(false, false, true)), Struct_1(-17988i, i32(-2147483648), vec3<bool>(true, false, false)), Struct_1(-1i, -10815i, vec3<bool>(true, false, false)), Struct_1(-40452i, 27665i, vec3<bool>(false, false, true)));

var<private> global4: Struct_1 = Struct_1(-1i, -1i, vec3<bool>(true, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool) -> f32 {
    global3 = array<Struct_1, 4>();
    let var_0 = 110f;
    let var_1 = min(2147483647i, ~_wgslsmith_sub_i32(-14507i, -_wgslsmith_dot_vec3_i32(vec3<i32>(global4.b, -38685i, u_input.a.x), vec3<i32>(u_input.a.x, global4.b, 2147483647i))));
    let var_2 = Struct_1(-(-1i >> (global0.x % 32u)), ~select(max(var_1, var_1) & -86630i, -15162i, !global4.c.x), select(!vec3<bool>(true, false, !global4.c.x), !select(!vec3<bool>(global4.c.x, true, global4.c.x), vec3<bool>(false, true, global4.c.x), !global4.c), global4.c));
    global4 = Struct_1(~19172i, i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, 1i), 2147483647i), var_2.c);
    return 1044f;
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(global1.x)))));
    var var_1 = Struct_1(-19527i, (u_input.a.x | ~(-u_input.a.x)) & -abs(firstLeadingBit(1i)), vec3<bool>(global4.c.x, true, !(!(global0.x > global0.x))));
    var_1 = global2[_wgslsmith_index_u32(global0.x, 4u)];
    global1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(186f * var_0.x), 1115f);
    var_0 = global1.yz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(624f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - -404f), _wgslsmith_f_op_f32(568f + global1.x)))) * 814f));
}

fn func_1(arg_0: u32) -> u32 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(func_2(true))), _wgslsmith_f_op_f32(811f * global1.x))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(183f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -894f)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1067f, 1038f, -379f), vec3<f32>(global1.x, global1.x, 672f))))) - vec3<f32>(1174f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(-642f, 672f)))) - vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(2130f, _wgslsmith_f_op_f32(global1.x + 1071f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_div_f32(global1.x, 577f)), global4.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(!global4.c.x)), _wgslsmith_f_op_f32(func_3(global4.c.zx))))));
    var var_1 = _wgslsmith_f_op_f32(round(var_0.x));
    let var_2 = -vec4<i32>(abs(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, -(global4.a >> (15688u % 32u))), _wgslsmith_sub_i32(global4.b, -2147483647i), -2147483647i);
    global2 = array<Struct_1, 4>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = _wgslsmith_mult_u32(~(~(~(~30508u))), abs(firstTrailingBit(~func_1(global0.x))));
    var var_1 = Struct_1(8089i, -1i, select(select(select(vec3<bool>(true, global4.c.x, global4.c.x), global4.c, !global4.c.x), vec3<bool>(global4.c.x && global4.c.x, true, false), false), select(global4.c, select(!global4.c, global4.c, !global4.c), vec3<bool>(true, global4.c.x | false, false)), false));
    let var_2 = Struct_1(firstTrailingBit(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), var_1.b & 0i))), 5362i, !(!vec3<bool>(var_1.c.x, true, var_1.c.x)));
    global3 = array<Struct_1, 4>();
    let var_3 = Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(global4.b, 0i, -39701i, -1i)), vec4<i32>(var_2.a, u_input.a.x, u_input.a.x, var_2.b), select(vec4<bool>(var_2.c.x, false, var_2.c.x, false), vec4<bool>(true, false, false, true), true)), reverseBits(-vec4<i32>(-2147483647i, u_input.a.x, 1i, var_1.a)))), -1i, !(!vec3<bool>(all(vec4<bool>(global4.c.x, true, true, false)), false, var_2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1830f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -794f)))), -1191f, _wgslsmith_f_op_f32(-global1.x), global1.x), ~vec3<i32>(_wgslsmith_sub_i32(0i, var_2.a), -5794i, abs(u_input.a.x)) << (_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4845u, global0.x, global0.x)), max(~vec3<u32>(4294967295u, 19081u, global0.x), vec3<u32>(4623u, global0.x, global0.x)), countOneBits(vec3<u32>(30893u, 8210u, 27892u)) & vec3<u32>(global0.x, global0.x, global0.x)) % vec3<u32>(32u)), global0.x);
}

