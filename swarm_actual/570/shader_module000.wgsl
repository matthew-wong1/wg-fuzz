struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: Struct_3 = Struct_3(-1i, Struct_2(vec4<u32>(0u, 79346u, 0u, 733u), Struct_1(32269u)), false, Struct_2(vec4<u32>(0u, 39854u, 51940u, 7381u), Struct_1(23567u)), Struct_1(68772u));

var<private> global2: Struct_3 = Struct_3(0i, Struct_2(vec4<u32>(1u, 43287u, 0u, 1u), Struct_1(1u)), false, Struct_2(vec4<u32>(60374u, 28252u, 65864u, 14590u), Struct_1(25958u)), Struct_1(44298u));

var<private> global3: vec4<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_3) -> f32 {
    var var_0 = arg_1.yxy;
    var var_1 = 0i;
    var var_2 = Struct_2(~vec4<u32>(~(u_input.c.x & global1.b.b.a), ~_wgslsmith_mult_u32(arg_3.d.a.x, global1.e.a), min(global2.b.b.a, ~4294967295u), 4294967295u), global2.b.b);
    global0 = array<bool, 20>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-830f - -833f) + _wgslsmith_f_op_f32(f32(-1f) * -966f))), -452f));
    return _wgslsmith_f_op_f32(step(172f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-539f - -1000f)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>) -> Struct_3 {
    global0 = array<bool, 20>();
    let var_0 = global1.e;
    var var_1 = global2.d;
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, select(vec4<bool>(arg_0.x, true, true, global2.c), vec4<bool>(global0[_wgslsmith_index_u32(4798u, 20u)], global2.c, arg_0.x, global0[_wgslsmith_index_u32(8284u, 20u)]), vec4<bool>(arg_2.x, global2.c, false, arg_2.x)), select(vec3<u32>(27037u, global3.x, 0u), vec3<u32>(4294967295u, 4294967295u, var_0.a), vec3<bool>(true, global1.c, global0[_wgslsmith_index_u32(global3.x, 20u)])), Struct_3(arg_1, Struct_2(global1.b.a, Struct_1(global1.e.a)), global2.c, Struct_2(global2.d.a, var_1.b), Struct_1(global2.b.b.a))))), _wgslsmith_f_op_f32(f32(-1f) * -317f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.c, !vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 20u)], false, arg_0.x, true), vec3<u32>(var_0.a, 30428u, global3.x), Struct_3(2072i, global2.b, true, Struct_2(global1.b.a, Struct_1(global1.d.a.x)), global2.e)))) - 1f), _wgslsmith_f_op_f32(972f - _wgslsmith_f_op_f32(-585f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1243f))))));
    let var_3 = _wgslsmith_sub_vec2_u32(reverseBits(global3.yw), global3.zy);
    return Struct_3(countOneBits(global1.a), global1.b, true, global2.b, Struct_1(1u));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = global1.e;
    return func_2(vec2<bool>(all(vec3<bool>(true, all(vec2<bool>(false, false)), true)), global0[_wgslsmith_index_u32(~(~u_input.c.x), 20u)]), global1.a & ~min(-13557i, -2147483647i), select(!vec2<bool>(all(vec2<bool>(true, global0[_wgslsmith_index_u32(global2.e.a, 20u)])), global0[_wgslsmith_index_u32(u_input.c.x, 20u)] && global1.c), select(vec2<bool>(true, false), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), true), global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    global1 = func_1(2147483647i);
    var var_0 = vec2<i32>(global2.a, abs(u_input.d));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1068f, -464f, global0[_wgslsmith_index_u32(u_input.c.x, 20u)])), -546f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(908f, -1000f), vec2<f32>(-983f, -298f), true)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-636f - 202f) - -1039f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1000f, 627f)))))));
    var_0 = firstLeadingBit(reverseBits(firstLeadingBit(-_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, global2.a), vec2<i32>(var_0.x, -7054i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_1.x)), vec3<u32>(min(global3.x, 4746u), ~(~global3.x), 31760u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1 * var_1), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1099f, -105f), _wgslsmith_f_op_vec2_f32(max(var_1, vec2<f32>(var_1.x, var_1.x))), global2.c)), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.d.a.x, global3.x), 20u)], all(vec4<bool>(true, false, global1.c, global2.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_1.x), var_1.x))), firstTrailingBit(vec2<i32>(31357i, 20828i) << (abs(u_input.c.yy) % vec2<u32>(32u))));
}

