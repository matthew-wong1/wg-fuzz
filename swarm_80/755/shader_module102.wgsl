struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: array<i32, 19>;

var<private> global2: array<bool, 6>;

var<private> global3: array<u32, 8>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(~firstLeadingBit(34879u)), 5u)];
    var var_2 = 1018f;
    global4 = !(!(!arg_0));
    let var_3 = 34729i;
    return !(!arg_0.x | any(!vec3<bool>(true, global2[_wgslsmith_index_u32(20108u, 6u)], global4.x)));
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_3, 5>();
    global4 = select(select(vec4<bool>(true && global4.x, global2[_wgslsmith_index_u32(abs(32677u >> (u_input.d.x % 32u)), 6u)], _wgslsmith_f_op_f32(round(-159f)) > -361f, global4.x), !vec4<bool>(global4.x, true, 55584u < global3[_wgslsmith_index_u32(3156u, 8u)], global4.x), select(select(vec4<bool>(global2[_wgslsmith_index_u32(8494u, 6u)], true, false, global2[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(7112u, 6u)], false, global2[_wgslsmith_index_u32(u_input.e.x, 6u)], global2[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(true, global4.x, false, global4.x)), !(!vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24446u, 8u)], 6u)], global4.x, true, global4.x)), vec4<bool>(global4.x, u_input.d.x <= u_input.e.x, !global2[_wgslsmith_index_u32(u_input.e.x, 6u)], true))), select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(2042u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(83504u, 6u)], global2[_wgslsmith_index_u32(u_input.e.x, 6u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 8u)], 6u)])), vec4<bool>(false, true, any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 6u)], false, true, true)), func_3(vec4<bool>(true, global4.x, global4.x, global2[_wgslsmith_index_u32(u_input.e.x, 6u)]), Struct_1(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12722u, 8u)], 8u)], 19u)], u_input.a))), true), vec4<bool>(global4.x, false, true | global4.x, select(false, false, !global4.x)), _wgslsmith_clamp_i32(-26877i, ~(-95144i), u_input.a) <= _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(882u, 19u)], -1i))), global4.x);
    var var_0 = global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(countOneBits(~4294967295u), 8u)] << (_wgslsmith_add_u32(_wgslsmith_add_u32(max(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(79237u, 8u)], 8u)], 8u)]), ~4294967295u), u_input.e.x), _wgslsmith_sub_u32(4294967295u, u_input.e.x)) % 32u), 8u)];
    let var_1 = Struct_2(!select(!global4.yyw, !vec3<bool>(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 6u)], global2[_wgslsmith_index_u32(647u, 6u)]), vec3<bool>(global4.x, global1[_wgslsmith_index_u32(u_input.e.x, 19u)] >= u_input.c.x, true)));
    global0 = array<Struct_3, 5>();
    return Struct_3(Struct_2(select(select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 6u)], false), select(vec3<bool>(global2[_wgslsmith_index_u32(58602u, 6u)], var_1.a.x, false), global4.yyw, false)), !(!vec3<bool>(false, var_1.a.x, global4.x)), vec3<bool>(global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 8u)], 6u)], !var_1.a.x, any(vec3<bool>(var_1.a.x, global4.x, false))))), vec4<i32>(-1i) * -vec4<i32>(~(-37830i), ~global1[_wgslsmith_index_u32(1u, 19u)], -2147483647i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-258f, -706f, true))))) + 1022f), select((global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(13057u, 4294967295u)), 19u)] & -u_input.b.x) | -16056i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 20924i, 31522i, -8807i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i, global1[_wgslsmith_index_u32(38305u, 19u)], 49399i)) >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 8u)], 8u)], 8u)] % 32u), -63033i, u_input.a), any(vec3<bool>(false, true, true))), -657f);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec4<u32> {
    var var_0 = func_2();
    var var_1 = ~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~arg_1.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(27088u, arg_2.x, u_input.e.x), 19u)], _wgslsmith_clamp_i32(1i, 4793i, -14847i)), vec3<i32>(global1[_wgslsmith_index_u32(7090u, 19u)], 0i, -32851i) >> (_wgslsmith_mod_vec3_u32(u_input.d, u_input.d) % vec3<u32>(32u))), vec3<i32>(firstLeadingBit(-15007i), countOneBits(global1[_wgslsmith_index_u32(8585u, 19u)]), 0i));
    var_0 = Struct_3(Struct_2(vec3<bool>(select(-1057f < arg_0.x, true, var_0.a.a.x), global2[_wgslsmith_index_u32(select(arg_2.x, 1u, true) ^ select(0u, u_input.e.x, true), 6u)], !global4.x)), abs(max(vec4<i32>(~2147483647i, 1i, 1i, -2147483647i), firstLeadingBit(var_0.b))), arg_0.x, var_0.b.x, _wgslsmith_f_op_f32(abs(arg_0.x)));
    let var_2 = func_2().a;
    var var_3 = ~firstLeadingBit(vec4<u32>(53106u, 38799u, ~(~50420u), ~(~0u)));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(var_3.x, ~_wgslsmith_sub_u32(select(1u, u_input.d.x, true), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.x), vec2<u32>(26581u, 34668u)), 8u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x, 4294967295u, 1u), arg_2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.x, 8u)], 8u)] >> (arg_2.x % 32u), 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(64874u, global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(var_3.x, 8u)], u_input.d.x), vec4<u32>(1u, 9988u, 1u, arg_2.x) >> (vec4<u32>(arg_2.x, 0u, 1u, global3[_wgslsmith_index_u32(47413u, 8u)]) % vec4<u32>(32u)), ~vec4<u32>(0u, arg_2.x, u_input.e.x, var_3.x))), 16992u), vec4<u32>(firstTrailingBit(reverseBits(var_3.x)), ~(~_wgslsmith_clamp_u32(4294967295u, global3[_wgslsmith_index_u32(arg_2.x, 8u)], arg_2.x)), ~u_input.e.x, ~(~u_input.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 8>();
    var var_0 = select(select(!select(!global4.xx, global4.yw, !global4.wx), select(select(select(global4.zz, global4.zy, global4.x), select(global4.xx, global4.yz, vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 6u)])), !global4.wz), !select(vec2<bool>(true, false), global4.zz, global4.xx), global2[_wgslsmith_index_u32(firstLeadingBit(~global3[_wgslsmith_index_u32(4294967295u, 8u)]), 6u)]), !global2[_wgslsmith_index_u32(firstLeadingBit(1362u), 6u)]), vec2<bool>(!(global1[_wgslsmith_index_u32(min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 8u)], 8u)]), 19u)] >= 1i), true), (true | global2[_wgslsmith_index_u32(u_input.e.x, 6u)]) | global4.x);
    var var_1 = any(!vec4<bool>(!all(vec2<bool>(global4.x, var_0.x)), global4.x, _wgslsmith_f_op_f32(step(-1000f, 2940f)) == _wgslsmith_f_op_f32(f32(-1f) * -307f), true));
    var var_2 = select(~vec4<u32>(~global3[_wgslsmith_index_u32(u_input.e.x, 8u)], u_input.d.x & 63237u, ~4294967295u, 1u) << (~vec4<u32>(_wgslsmith_mod_u32(40652u, u_input.d.x), select(global3[_wgslsmith_index_u32(4294967295u, 8u)], 1u, global2[_wgslsmith_index_u32(4294967295u, 6u)]), ~69150u, countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34737u, 8u)], 8u)])) % vec4<u32>(32u)), ~func_1(vec3<f32>(_wgslsmith_f_op_f32(629f * -262f), -717f, -941f), countOneBits(vec2<i32>(0i, global1[_wgslsmith_index_u32(42733u, 19u)])), firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(69776u, 8u)], 1u))), vec4<bool>(var_0.x, any(vec3<bool>(var_0.x, !global2[_wgslsmith_index_u32(0u, 6u)], !global2[_wgslsmith_index_u32(u_input.e.x, 6u)])), all(vec3<bool>(!global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26221u, 8u)], 8u)], 8u)] << (global3[_wgslsmith_index_u32(174u, 8u)] % 32u), 8u)], 6u)], true)), !func_2().a.a.x));
    var_0 = !vec2<bool>(1i != (u_input.b.x | global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 10285u), 19u)]), var_0.x);
    var var_3 = _wgslsmith_mod_vec2_u32(select(func_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(131f, -578f, -173f))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(37699i, 75611i), vec2<i32>(-1i, 33709i)), var_2.ww).wx, vec2<u32>(abs(4294967295u), 0u), !all(vec3<bool>(global4.x, var_0.x, true))), max(select(vec2<u32>(_wgslsmith_mod_u32(52351u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 8u)], 8u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 5920u, 4294967295u, 5253u), vec4<u32>(51716u, 12021u, u_input.e.x, u_input.e.x))), ~(var_2.wz | var_2.xy), !global4.wx), u_input.d.xx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d.x, 21472u, 4294967295u, 12176u) | ~(~vec4<u32>(var_3.x, u_input.e.x, var_2.x, 28393u)), ~(~(~vec4<u32>(var_3.x, 16610u, var_2.x, 17256u)))));
}

