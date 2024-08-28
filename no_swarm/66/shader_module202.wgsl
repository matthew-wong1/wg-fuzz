struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(45006i, 5464i, 47463i, -1i), vec2<bool>(true, false), -28454i, vec4<f32>(526f, 1824f, -1332f, -671f), -23969i);

var<private> global2: Struct_1;

var<private> global3: i32 = -1i;

var<private> global4: array<u32, 12> = array<u32, 12>(4294967295u, 67504u, 10422u, 9783u, 67153u, 1u, 28190u, 29782u, 1u, 77294u, 20089u, 25044u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec4<f32> {
    global3 = _wgslsmith_clamp_i32(-select(global1.c, _wgslsmith_add_i32(global1.c, global1.e), false) ^ 2147483647i, 1i, ~_wgslsmith_dot_vec2_i32(reverseBits(-global2.a.yz), global2.a.zw));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.d.x, 391f)) + _wgslsmith_f_op_f32(f32(-1f) * -815f)), global1.d.x))) + 763f);
    global1 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -19935i, ~(i32(-1i) * -1i), 1i), firstTrailingBit(reverseBits(~global2.a))), !vec2<bool>(_wgslsmith_clamp_i32(u_input.a, u_input.c.x, global1.a.x) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), u_input.c.xx), false), global1.a.x, _wgslsmith_f_op_vec4_f32(-global2.d), abs(_wgslsmith_dot_vec2_i32(max(global2.a.ww << (u_input.e.yx % vec2<u32>(32u)), min(u_input.b, vec2<i32>(global2.a.x, global2.a.x))), vec2<i32>(-1i, _wgslsmith_div_i32(-7011i, 1i)))));
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-global1.c, ~0i, _wgslsmith_add_i32(-50364i, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, -1i, 82812i), vec4<i32>(u_input.a, u_input.c.x, global2.e, -57037i))), vec4<i32>(global1.e ^ -2147483647i, global2.a.x, _wgslsmith_mult_i32(-38506i, u_input.a), firstTrailingBit(31519i))), global2.a), vec2<bool>(0u >= arg_1, max(-global2.e, 1i) >= _wgslsmith_dot_vec2_i32(global2.a.yw << (vec2<u32>(65763u, u_input.e.x) % vec2<u32>(32u)), global1.a.zw)), firstTrailingBit(-global2.e), global2.d, global1.a.x);
    var var_1 = var_0;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -1000f), global1.d.x, false)) * 2494f), var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(-global2.d.x)))));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(u_input.b.x), 48745i, ~1i, ~(-29606i)), min((vec4<i32>(arg_0, u_input.a, arg_0, global2.c) << (vec4<u32>(52105u, 0u, global4[_wgslsmith_index_u32(u_input.d, 12u)], u_input.e.x) % vec4<u32>(32u))) << (~vec4<u32>(global4[_wgslsmith_index_u32(59449u, 12u)], u_input.d, 11107u, u_input.e.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(39427i, 43084i, 2147483647i, 1i), -vec4<i32>(0i, arg_0, -19354i, global2.e)))), global1.b, 9314i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(global1.d.x, global2.d.x), _wgslsmith_f_op_f32(round(1449f)), global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -311f)))))), -u_input.b.x);
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(select(firstTrailingBit(1u) == 46653u, all(select(vec4<bool>(var_1.b.x, global2.b.x, var_2.b.x, global1.b.x), vec4<bool>(global2.b.x, true, true, global1.b.x), vec4<bool>(var_2.b.x, false, global1.b.x, global1.b.x))), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1092f * global1.d.x))) <= 2146f, var_1.b.x), 1u));
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_1(max(_wgslsmith_div_vec4_i32(global2.a, ~abs(vec4<i32>(global2.c, -40437i, -27096i, global2.e))), reverseBits(global1.a)), select(global1.b, func_2(_wgslsmith_dot_vec3_i32(global2.a.yyy, reverseBits(vec3<i32>(-1i, 0i, global1.c)))), !vec2<bool>(false, arg_0.x >= 502f)), max(_wgslsmith_sub_i32(~1i, -(global1.a.x | global1.c)), _wgslsmith_div_i32(u_input.b.x, _wgslsmith_sub_i32(-4535i | global2.c, u_input.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.d.x, global1.d.x, 2431f, 272f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(-137f * 494f)))), vec4<bool>(true, any(!vec3<bool>(global2.b.x, false, global2.b.x)), true, !global1.b.x | true))), -85183i);
    global4 = array<u32, 12>();
    let var_1 = var_0;
    let var_2 = var_1;
    global4 = array<u32, 12>();
    return _wgslsmith_f_op_f32(var_1.d.x * 1333f);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(-abs(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 1i, -1i, -20382i)), !(!arg_1.b), -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0), global2.d)) - global1.d) - vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2.d.x)), _wgslsmith_f_op_f32(select(-648f, 249f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-823f - arg_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - 1f))), select(u_input.b.x, arg_1.a.x, global2.b.x));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.d.x), 1048f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1061f))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.d * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-579f, global1.d.x, global1.d.x, 583f))), _wgslsmith_f_op_vec4_f32(-global2.d))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d) + global1.d)), Struct_1(global2.a, vec2<bool>(all(select(vec4<bool>(false, global2.b.x, false, global2.b.x), vec4<bool>(global1.b.x, true, false, global2.b.x), global1.b.x)), true), _wgslsmith_clamp_i32(global1.c, _wgslsmith_mod_i32(global2.e, firstTrailingBit(936i)), _wgslsmith_div_i32(reverseBits(8557i), global2.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(global2.d.wy, global1.d.wxx)), global2.d.x, _wgslsmith_f_op_f32(abs(-879f)), 681f)), global1.c << (~u_input.e.x % 32u)));
    global1 = func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(global2.d.xz, vec3<f32>(global1.d.x, global1.d.x, -511f))), _wgslsmith_f_op_f32(-global1.d.x), -1497f, _wgslsmith_f_op_f32(sign(global2.d.x)))))), func_4(vec4<f32>(global2.d.x, 2197f, _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(-global1.d.x)), var_0.d.x), Struct_1(vec4<i32>(~var_0.c, ~var_0.c, ~u_input.a, func_4(var_0.d, Struct_1(var_0.a, vec2<bool>(global2.b.x, false), u_input.b.x, var_0.d, -14757i)).e), vec2<bool>(any(vec3<bool>(false, global2.b.x, false)), true), abs(global1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, var_0.d.x, 249f, 1000f)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -41637i), -global1.a.yy))));
    var var_1 = global2.b.x;
    var var_2 = (select(48437u, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], !global2.b.x) > _wgslsmith_dot_vec2_u32(~u_input.e.xz, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 29115u) | vec2<u32>(global4[_wgslsmith_index_u32(7591u, 12u)], 4294967295u), vec2<u32>(27002u, u_input.d) << (u_input.e.yx % vec2<u32>(32u))))) | (!(!all(vec3<bool>(var_0.b.x, false, global2.b.x))) && (-(global1.e & var_0.a.x) >= 2147483647i));
    global4 = array<u32, 12>();
    var_0 = Struct_1(global1.a, global1.b, max(~(_wgslsmith_dot_vec3_i32(var_0.a.xwx, global1.a.wwy) >> (_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.e.x, 12u)], u_input.d) % 32u)), -2147483647i), vec4<f32>(1009f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.d.x)), _wgslsmith_f_op_f32(-global1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.d.x)) - _wgslsmith_f_op_f32(abs(global1.d.x))) - -1134f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(false, var_0.b.x, true), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13971u, 12u)], 12u)], 12u)])).x)))), 1i);
    global4 = array<u32, 12>();
    var var_3 = ~vec2<u32>(global4[_wgslsmith_index_u32(0u, 12u)], u_input.d);
    let var_4 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(u_input.a), global2.e ^ 0i, 0i, ~global2.e), var_0.a, global1.a) >> (~(~vec4<u32>(u_input.e.x, 42925u, 5684u, u_input.d)) % vec4<u32>(32u)), firstTrailingBit(var_0.a), any(!global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

