struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<bool>,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: vec3<f32> = vec3<f32>(-1873f, 1615f, -1837f);

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -51441i), vec2<i32>(1i, 41125i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(0i, 17749i), vec2<i32>(-46063i, 40739i), vec2<i32>(-68545i, -41601i), vec2<i32>(-46757i, 1i), vec2<i32>(i32(-2147483648), -15401i), vec2<i32>(i32(-2147483648), -52065i), vec2<i32>(0i, 241i), vec2<i32>(i32(-2147483648), -35240i));

var<private> global4: array<u32, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = any(global0.xx);
    global4 = array<u32, 32>();
    var var_1 = countOneBits(_wgslsmith_mod_vec2_i32(countOneBits(min(firstLeadingBit(vec2<i32>(5643i, 8104i)), _wgslsmith_add_vec2_i32(vec2<i32>(-60091i, 47529i), global3[_wgslsmith_index_u32(u_input.d.x, 14u)]))), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(67526u, _wgslsmith_clamp_u32(4294967295u, 38277u, 1u)), 14u)]));
    let var_2 = ~u_input.a.yz;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(279f * _wgslsmith_div_f32(-198f, _wgslsmith_f_op_f32(-global1.x))))), global1.x);
    return var_1.x;
}

fn func_2(arg_0: vec2<f32>) -> vec4<bool> {
    global2 = vec3<bool>(!global2.x, true, true);
    global3 = array<vec2<i32>, 14>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(437f, -777f)), -882f)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, 1422f), _wgslsmith_f_op_f32(ceil(356f))), global1.x)));
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))) - _wgslsmith_f_op_f32(floor(-1000f))), false, vec2<bool>(true, global2.x), ~u_input.d.xx << (u_input.d.zy % vec2<u32>(32u))), vec4<i32>(~(-1110i), -2147483647i, func_3(), _wgslsmith_add_i32(-9826i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, 2147483647i)), global3[_wgslsmith_index_u32(~0u, 14u)]))), !select(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), select(vec4<bool>(global2.x, false, global2.x, global0.x), vec4<bool>(true, global2.x, global0.x, true), vec4<bool>(true, true, global2.x, true)), !vec4<bool>(false, false, global0.x, false)), select(select(vec4<bool>(global2.x, global0.x, false, global0.x), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, false, global0.x, true)), vec4<bool>(global0.x, true, global2.x, true), true), !(!vec4<bool>(global0.x, global2.x, global0.x, global2.x))), ~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(4294967295u, 1u), ~u_input.a.x), global2.x);
    var var_1 = firstLeadingBit(min(_wgslsmith_clamp_vec2_i32(-var_0.b.zz, vec2<i32>(-27427i, 3749i), var_0.b.ww) | ~vec2<i32>(7585i, 2147483647i), vec2<i32>(2147483647i, var_0.b.x)));
    return var_0.c;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    global4 = array<u32, 32>();
    let var_0 = 1u;
    return Struct_2(arg_0, any(func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.xx))))), vec2<bool>(true, true), u_input.d.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(-759f, u_input.d.zzz, Struct_2(899f, global0.x, global2.xy, vec2<u32>(global4[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], u_input.d.x), u_input.d))), !(!(!global0.x))), vec4<i32>(1i, 1i, 1i, 1i), select(select(select(select(vec4<bool>(global0.x, true, true, global2.x), vec4<bool>(false, true, true, global2.x), vec4<bool>(false, global2.x, false, global0.x)), !vec4<bool>(global2.x, global2.x, global0.x, global2.x), !vec4<bool>(false, false, global0.x, global2.x)), !func_2(global1.xz), func_2(global1.yz)), vec4<bool>(true, (global0.x & global0.x) != true, global4[_wgslsmith_index_u32(1u, 32u)] <= _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(32086u, 32u)]), false), !vec4<bool>(true, true, true, any(vec3<bool>(true, global2.x, global0.x)))), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(u_input.a.x, 1u, ~77381u) & 6715u), 32u)], 32u)], global2.x);
    let var_1 = Struct_2(global1.x, global0.x, vec2<bool>(any(var_0.c.xzw), !all(vec2<bool>(true, global0.x))), ~(~(~u_input.d.yw)) ^ u_input.a.yz);
    let var_2 = !vec2<bool>(global2.x, var_1.c.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-768f, _wgslsmith_f_op_f32(round(672f))) + global1.yy);
    let var_4 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(min(~u_input.a, ~u_input.d.yxx) | ~countOneBits(u_input.a), vec3<u32>(57321u | _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_1.d.x, 4294967295u, var_1.d.x)), 1u, ~(var_1.d.x >> (11036u % 32u)))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, 16533u) >> (54603u % 32u), ~4294967295u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(55737u, u_input.b, 22222u), vec3<u32>(u_input.d.x, var_1.d.x, 1u)), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(global1.xx, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_3.x, var_1.a)), _wgslsmith_f_op_f32(var_0.a.a - var_0.a.a), -563f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a, 1111f, 1000f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.a, -260f, -696f))))))), var_0.b.x);
}

