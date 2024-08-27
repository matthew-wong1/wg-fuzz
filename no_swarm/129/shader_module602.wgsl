struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-512f, 2698f, -571f, -1585f, 696f, 1748f, 379f, -352f, -1245f, 1000f, 957f, 233f, 635f, 584f, -269f, 191f, 1863f, -855f, 2198f, 427f, 827f, -730f);

var<private> global1: Struct_3;

var<private> global2: Struct_1;

var<private> global3: vec3<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = all(select(vec2<bool>(any(vec4<bool>(false, true, true, true)) & true, !(global1.d < global1.b.x)), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), !(!all(vec2<bool>(true, true)))));
    let var_1 = global1.a.d;
    let var_2 = ~min((-global1.d << (~2997u % 32u)) | -34762i, 1i);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.zwy));
    var var_4 = arg_0;
    return arg_0;
}

fn func_3() -> vec4<f32> {
    var var_0 = true;
    var var_1 = Struct_3(func_1(Struct_3(Struct_1(select(2147483647i, 0i, true), _wgslsmith_mult_i32(global1.b.x, global2.a), global1.a.c >> (global2.c % 32u), global2.d), vec2<i32>(firstTrailingBit(global2.b), 0i), _wgslsmith_f_op_vec4_f32(abs(global1.c)), global2.a, vec3<u32>(abs(4294967295u), ~76803u, ~global3.x))).a, -(vec2<i32>(-2147483647i, global1.a.b) & abs(global1.b)), global1.c, -2147483647i, min(countOneBits(abs(vec3<u32>(11660u, global2.c, 0u))) >> (~firstLeadingBit(vec3<u32>(0u, global3.x, 40344u)) % vec3<u32>(32u)), global1.e));
    global1 = Struct_3(var_1.a, vec2<i32>(_wgslsmith_div_i32(var_1.d, 2147483647i), global2.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_1.c, vec4<f32>(-986f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 22u)]), global0[_wgslsmith_index_u32(25909u, 22u)], 1f)))), _wgslsmith_clamp_i32(~(-global1.b.x >> (_wgslsmith_mult_u32(u_input.b, global3.x) % 32u)), 57538i, ~(~var_1.a.b)), max(~vec3<u32>(global2.c, 49840u, global1.e.x) >> (vec3<u32>(var_1.e.x, 48632u, countOneBits(global1.e.x)) % vec3<u32>(32u)), var_1.e << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(54876u, global2.c, global1.e.x), var_1.e, vec3<u32>(u_input.b, 1u, 0u)) % vec3<u32>(32u))));
    let var_2 = countOneBits(max((-vec3<i32>(1i, global2.a, 7330i) | -vec3<i32>(0i, -50688i, var_1.d)) & -(vec3<i32>(2147483647i, global2.b, -6896i) << (vec3<u32>(32532u, global2.c, 32791u) % vec3<u32>(32u))), vec3<i32>(var_1.b.x, -13016i, -2147483647i)));
    let var_3 = func_1(func_1(Struct_3(Struct_1(_wgslsmith_div_i32(global1.d, 1i), 2147483647i, select(23380u, var_1.e.x, false), _wgslsmith_f_op_f32(global2.d - global0[_wgslsmith_index_u32(11611u, 22u)])), vec2<i32>(-2147483647i, 5295i), vec4<f32>(_wgslsmith_f_op_f32(max(1473f, 955f)), func_1(Struct_3(Struct_1(-2506i, var_1.b.x, 8997u, 698f), vec2<i32>(var_2.x, 2147483647i), vec4<f32>(global2.d, -1000f, -1433f, 484f), global2.a, vec3<u32>(23055u, global3.x, global2.c))).c.x, global2.d, _wgslsmith_f_op_f32(step(var_1.c.x, 388f))), -10771i, ~vec3<u32>(48288u, global3.x, u_input.b))));
    return vec4<f32>(_wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(min(1f, -3252f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1104f, _wgslsmith_f_op_f32(f32(-1f) * -317f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-156f + global2.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a.d - 184f), var_3.a.d))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * -1297f));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<i32>(global1.d, 0i, 2147483647i, 6148i);
    global1 = Struct_3(Struct_1(0i, ~(global1.a.b >> (58722u % 32u)), 1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(26261u, 22u)] + global0[_wgslsmith_index_u32(reverseBits(global3.x), 22u)])))), ~_wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(var_0.zy, var_0.yw), _wgslsmith_sub_vec2_i32(vec2<i32>(-29286i, global1.a.b), -var_0.yw)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.d, 715f, 1129f, -1479f), global1.c))))), -var_0.x & (i32(-1i) * -_wgslsmith_dot_vec2_i32(global1.b, vec2<i32>(2147483647i, var_0.x))), global1.e);
    global2 = global1.a;
    var var_1 = !(!(arg_1 & arg_0));
    global0 = array<f32, 22>();
    return Struct_1(i32(-1i) * -global2.b, 27286i, max(u_input.a, 1u) ^ 89279u, _wgslsmith_f_op_f32(select(global2.d, global2.d, true == any(vec3<bool>(true, false, arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global1.a, min(-vec2<i32>(-global1.a.a, -38939i & global1.a.a), ~abs(~vec2<i32>(global1.a.b, -1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(279f - 619f), _wgslsmith_f_op_f32(1000f - global1.a.d)), -1000f, _wgslsmith_f_op_f32(min(1461f, _wgslsmith_f_op_f32(round(1689f)))))), global2.b, global1.e);
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(reverseBits(0i) <= (63687i | -global2.a), false, true), true && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 22u)] - 458f) * -740f) != _wgslsmith_div_f32(_wgslsmith_div_f32(global2.d, global0[_wgslsmith_index_u32(u_input.a, 22u)]), 270f)));
    var_0 = func_1(Struct_3(var_0.a, countOneBits(vec2<i32>(abs(4873i), 42012i)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(global1.c)))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 5845i), vec3<i32>(35384i, var_0.d, global2.b)), -46113i), global2.a, 20274i), global1.e));
    let var_2 = Struct_3(func_1(func_1(Struct_3(func_2(false, false, var_0.e.x), max(vec2<i32>(-1i, -1i), vec2<i32>(var_0.d, 0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-179f, global2.d, 349f, var_0.a.d) + vec4<f32>(global0[_wgslsmith_index_u32(var_0.e.x, 22u)], global2.d, global1.c.x, var_0.c.x)), _wgslsmith_mod_i32(global2.b, var_0.a.a), ~var_0.e))).a, ~abs(vec2<i32>(-48424i, _wgslsmith_mult_i32(2147483647i, var_0.b.x))), vec4<f32>(1800f, global1.a.d, _wgslsmith_f_op_f32(select(207f, _wgslsmith_f_op_vec4_f32(func_3()).x, select(var_1.x, true, var_1.x))), -1285f), global1.b.x, firstTrailingBit(~var_0.e));
    let var_3 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(10204i, abs(-9572i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.wy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d, 845f)) * var_0.c.yx)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(318f, var_2.a.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1590f, global1.a.d)))));
}

