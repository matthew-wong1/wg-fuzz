struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(0u, 37248u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 28376u, 37470u), vec3<u32>(81606u, 110731u, 31145u), vec3<u32>(0u, 0u, 94951u), vec3<u32>(4294967295u, 6678u, 62526u), vec3<u32>(15294u, 19341u, 4294967295u), vec3<u32>(1u, 4294967295u, 45992u), vec3<u32>(4294967295u, 19771u, 0u), vec3<u32>(43847u, 26460u, 23890u), vec3<u32>(57197u, 1u, 9795u), vec3<u32>(16121u, 37907u, 0u), vec3<u32>(67089u, 0u, 22109u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 51931u, 0u), vec3<u32>(31124u, 50328u, 1u), vec3<u32>(13302u, 60244u, 0u), vec3<u32>(9093u, 23099u, 0u), vec3<u32>(49559u, 0u, 7607u), vec3<u32>(30512u, 1u, 4294967295u), vec3<u32>(45562u, 63546u, 0u), vec3<u32>(8190u, 4294967295u, 0u), vec3<u32>(19007u, 75770u, 48249u), vec3<u32>(4294967295u, 79799u, 1u), vec3<u32>(4294967295u, 0u, 7704u), vec3<u32>(24460u, 66695u, 80769u), vec3<u32>(0u, 0u, 39457u), vec3<u32>(0u, 1404u, 0u));

var<private> global4: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(63887i, 0i, 5095i, i32(-2147483648)), vec4<i32>(23362i, -1i, 752i, 2147483647i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = !vec3<bool>(global1.x, global2.d.x, any(select(vec3<bool>(false, true, arg_1.d.x), !vec3<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x), select(vec3<bool>(arg_1.d.x, false, arg_1.d.x), vec3<bool>(true, arg_2.d.x, true), true))));
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_1 = abs(~(~(~u_input.d)));
    var var_2 = _wgslsmith_dot_vec2_i32(arg_2.a.ww, ~_wgslsmith_mod_vec2_i32(-(~global2.a.wy), ~arg_2.a.zw));
    return 0i;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-37108i >> (0u % 32u), func_3(-377f, Struct_1(arg_2.a, vec2<f32>(arg_2.c, arg_2.c), 163f, arg_2.d), Struct_1(global4[_wgslsmith_index_u32(arg_1.x, 2u)], arg_2.b, global2.c, vec2<bool>(false, arg_0))), firstLeadingBit(arg_2.a.x), global2.a.x), global2.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(731f, global2.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.b.x, -1242f), vec2<f32>(-314f, -947f))), false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c * arg_2.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), arg_3.c))), _wgslsmith_f_op_f32(-376f + arg_3.b.x), all(vec2<bool>(arg_0, all(global2.d))))), !vec2<bool>(any(!vec3<bool>(global2.d.x, true, global1.x)), !global2.d.x || !global1.x));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global2.b))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.x, 1147f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(183f * var_0.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1641f, 593f, true)))))), arg_2.d.x)), select(!select(vec2<bool>(global2.d.x, false), arg_3.d, true), !vec2<bool>(false, select(true, global1.x, false)), any(select(vec2<bool>(global2.d.x, global1.x), !global2.d, arg_3.d))));
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-468f)))))), _wgslsmith_f_op_f32(ceil(var_1.c)));
}

fn func_1() -> Struct_1 {
    var var_0 = !(!vec4<bool>(true, global2.d.x, true, any(vec4<bool>(global1.x, global1.x, false, global2.d.x))));
    global2 = Struct_1(vec4<i32>(~_wgslsmith_clamp_i32(~u_input.c, ~global2.a.x, global2.a.x), 2147483647i, _wgslsmith_mod_i32(-2147483647i, -2147483647i), max(_wgslsmith_add_i32(-19838i | global2.a.x, 1i), i32(-1i) * -3664i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true, firstTrailingBit(vec4<u32>(u_input.d.x, 4294967295u, u_input.b.x, 86383u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.a) % vec4<u32>(32u))), Struct_1(-global4[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-1771f, -1552f) - vec2<f32>(-780f, 890f)), _wgslsmith_f_op_f32(global2.b.x - 900f), vec2<bool>(true, true)), Struct_1(global2.a, global2.b, global2.b.x, global2.d))), _wgslsmith_f_op_vec2_f32(ceil(global2.b))), global2.b.x, !select(vec2<bool>(var_0.x, all(vec2<bool>(global2.d.x, var_0.x))), select(var_0.xy, !var_0.xw, !global1.x), false || any(vec4<bool>(true, true, global2.d.x, global2.d.x))));
    var var_1 = ~select(countOneBits(vec4<u32>(4294967295u, 43782u, u_input.d.x, 4294967295u) ^ (vec4<u32>(23319u, 11849u, 54790u, u_input.b.x) & u_input.d)), vec4<u32>(u_input.d.x, abs(u_input.b.x) >> (79997u % 32u), 1u, u_input.b.x), vec4<bool>(false, global1.x, true, all(global2.d)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))), global2.c, _wgslsmith_f_op_f32(trunc(-1000f)));
    var var_3 = !(!select(select(!vec4<bool>(true, var_0.x, true, true), select(vec4<bool>(global1.x, var_0.x, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, var_0.x, var_0.x, false)), !global1.x), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, global1.x)), select(select(vec4<bool>(var_0.x, false, true, global1.x), vec4<bool>(true, var_0.x, false, global2.d.x), global1.x), vec4<bool>(global1.x, global2.d.x, global1.x, true), var_0.x)));
    return Struct_1(firstLeadingBit(vec4<i32>(~(~u_input.c), 1i ^ firstTrailingBit(10482i), global0[_wgslsmith_index_u32(var_1.x ^ u_input.b.x, 32u)], select(global2.a.x, -2880i, !var_3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b) - global2.b), _wgslsmith_f_op_f32(abs(global2.b.x)), !var_3.ww);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_1();
    let var_2 = ~select(~vec2<u32>(reverseBits(4294967295u), u_input.a), ~u_input.b.xx, vec2<bool>(var_1.d.x, var_0.d.x));
    global0 = array<i32, 32>();
    let var_3 = !select(var_0.d, !global2.d, vec2<bool>(false, global2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(f32(-1f) * -1526f)), firstLeadingBit(select(-abs(vec2<i32>(global2.a.x, -22450i)), firstLeadingBit(vec2<i32>(0i, var_1.a.x)), abs(u_input.a) <= _wgslsmith_add_u32(var_2.x, u_input.b.x))), min(u_input.b.xz << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b.x, u_input.a), ~var_2, u_input.b.zz) % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) << (u_input.b.yx % vec2<u32>(32u)), select(var_2, _wgslsmith_clamp_vec2_u32(vec2<u32>(110036u, var_2.x) & vec2<u32>(4294967295u, 1u), ~vec2<u32>(4294967295u, 4817u), ~vec2<u32>(var_2.x, u_input.d.x)), _wgslsmith_f_op_f32(round(var_0.b.x)) > _wgslsmith_f_op_f32(round(global2.b.x)))), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(0i, ~global0[_wgslsmith_index_u32(u_input.d.x, 32u)], _wgslsmith_mod_i32(var_0.a.x, 5366i), ~39073i)), _wgslsmith_mod_vec4_i32(var_1.a, countOneBits(vec4<i32>(global2.a.x, global0[_wgslsmith_index_u32(44849u, 32u)], -1450i, u_input.c) ^ vec4<i32>(var_0.a.x, 0i, global0[_wgslsmith_index_u32(var_2.x, 32u)], 0i)))));
}

