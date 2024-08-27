struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 22> = array<i32, 22>(2147483647i, i32(-2147483648), 51216i, 1i, 47244i, 13706i, 6094i, -19338i, i32(-2147483648), 2147483647i, 1i, -1i, 0i, 0i, -1i, 1i, 2147483647i, -3263i, 2147483647i, -1i, -16229i, -1i);

var<private> global3: u32;

var<private> global4: vec3<u32> = vec3<u32>(78499u, 0u, 90262u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    let var_0 = Struct_5(true);
    let var_1 = Struct_2(Struct_1(vec4<bool>(any(vec3<bool>(true, false, false)), !var_0.a, !var_0.a, true)), !select(vec2<bool>(!var_0.a, any(vec4<bool>(var_0.a, false, false, var_0.a))), vec2<bool>(var_0.a, true), var_0.a), any(vec3<bool>(true, true, true)));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(global1.xx), u_input.a.zz) << (~global4.zx % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global1.zx, u_input.a.xz), global1.zw), reverseBits(vec2<u32>(1u, 17292u)))), ~(reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.yxy, vec3<u32>(7614u, 36718u, u_input.a.x))) & 0u), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(global4.x << (global1.x % 32u), min(global4.x, global4.x)), min(1u, u_input.a.x)), 0u));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_4 {
    var var_0 = !(!(!(!all(vec3<bool>(false, true, true)))));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1627u, ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global4.x, global1.x, u_input.a.x, u_input.a.x))), 1u, ~1u, ~(~func_3(vec2<i32>(0i, 51366i), vec4<f32>(-179f, global0[_wgslsmith_index_u32(11356u, 22u)], global0[_wgslsmith_index_u32(10742u, 22u)], -1026f), -147f))), u_input.a);
    global2 = array<i32, 22>();
    var var_2 = _wgslsmith_mult_vec4_u32(u_input.a, countOneBits(countOneBits(select(vec4<u32>(u_input.a.x, 1u, 4294967295u, 0u), vec4<u32>(global4.x, arg_1, global4.x, u_input.a.x), false))) << ((vec4<u32>(u_input.a.x, global4.x, 4294967295u, arg_1) ^ _wgslsmith_clamp_vec4_u32(~u_input.a, ~u_input.a, ~u_input.a)) % vec4<u32>(32u)));
    let var_3 = Struct_3(Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true))), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true)), false));
    return Struct_4(reverseBits(~countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(32838u, 22u)], global2[_wgslsmith_index_u32(arg_1, 22u)]))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_5(!all(vec4<bool>(false, false, true, false)) && true);
    var var_1 = func_2(~global2[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(1u, ~global4.x), firstLeadingBit(~global1.x)), 22u)], u_input.a.x);
    var var_2 = Struct_2(Struct_1(select(!select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(false, var_0.a, var_0.a, true), var_0.a), vec4<bool>(var_0.a != true, all(vec3<bool>(true, var_0.a, true)), var_1.a.x >= 0i, var_0.a), false)), vec2<bool>(any(vec3<bool>(var_0.a, true, var_0.a)), var_0.a), !(_wgslsmith_dot_vec4_u32(~vec4<u32>(103254u, 4294967295u, 13621u, global1.x), u_input.a) == u_input.b));
    global4 = global1.wyz;
    var var_3 = Struct_2(Struct_1(select(select(!var_2.a.a, vec4<bool>(true, var_2.c, var_2.a.a.x, var_0.a), var_2.a.a), select(vec4<bool>(var_2.b.x, true, false, var_2.b.x), !var_2.a.a, all(var_2.b)), false)), vec2<bool>(var_2.b.x, var_0.a), !all(vec4<bool>(select(var_2.b.x, true, var_2.a.a.x), var_0.a | true, true, true)));
    return Struct_1(var_3.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(u_input.a, u_input.a);
    global0 = array<f32, 22>();
    var var_1 = Struct_3(Struct_2(func_1(), vec2<bool>(true, true), global4.x < (_wgslsmith_mult_u32(var_0.x, 15359u) >> (~4294967295u % 32u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-275f, -153f, false)) - -766f));
    let var_3 = vec4<bool>(true, (~(~(-41392i)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1.x, 33940u), var_0.yyw) % 32u)) > global2[_wgslsmith_index_u32(global1.x, 22u)], all(vec3<bool>(var_1.a.c & (var_1.a.b.x | var_1.a.a.a.x), true, false)), func_1().a.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-602f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 22u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-665f, 165f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(74643u, 22u)], global0[_wgslsmith_index_u32(6755u, 22u)])))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(31238u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]) * vec2<f32>(-825f, global0[_wgslsmith_index_u32(global1.x, 22u)])))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(266f - _wgslsmith_f_op_f32(f32(-1f) * -1800f)), 2039f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-731f - 350f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(52924u, 22u)], global0[_wgslsmith_index_u32(7871u, 22u)]))))), vec3<f32>(-534f, -569f, 360f));
}

