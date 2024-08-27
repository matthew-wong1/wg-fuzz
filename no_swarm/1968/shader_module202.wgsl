struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<bool>(true, false, true), -895f, vec4<i32>(2147483647i, i32(-2147483648), 3935i, 0i), Struct_1(vec4<u32>(0u, 4294967295u, 64234u, 0u), true, true, vec3<u32>(4294967295u, 25100u, 0u)), Struct_1(vec4<u32>(15451u, 4294967295u, 0u, 4294967295u), true, true, vec3<u32>(4294967295u, 51507u, 0u))), Struct_2(vec3<bool>(true, false, true), -1787f, vec4<i32>(19779i, -1i, 0i, 17307i), Struct_1(vec4<u32>(11837u, 1u, 47129u, 0u), false, false, vec3<u32>(8154u, 0u, 10335u)), Struct_1(vec4<u32>(21280u, 65656u, 0u, 14534u), false, false, vec3<u32>(1u, 1u, 0u))), Struct_2(vec3<bool>(true, true, false), -2184f, vec4<i32>(18185i, -44399i, 1i, -4107i), Struct_1(vec4<u32>(51018u, 1u, 78535u, 17156u), false, false, vec3<u32>(15962u, 4294967295u, 11506u)), Struct_1(vec4<u32>(89865u, 96363u, 0u, 65687u), true, true, vec3<u32>(4294967295u, 74102u, 1u))), Struct_2(vec3<bool>(true, true, false), -817f, vec4<i32>(i32(-2147483648), 6118i, 0i, -31626i), Struct_1(vec4<u32>(1u, 43138u, 0u, 27758u), true, false, vec3<u32>(4294967295u, 10947u, 80489u)), Struct_1(vec4<u32>(39139u, 19909u, 1u, 4294967295u), false, false, vec3<u32>(67699u, 60911u, 30376u))), Struct_2(vec3<bool>(true, false, false), 1000f, vec4<i32>(-25853i, i32(-2147483648), -1i, -45554i), Struct_1(vec4<u32>(40218u, 54661u, 15035u, 0u), false, false, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 31545u), false, false, vec3<u32>(1189u, 12731u, 40125u))), Struct_2(vec3<bool>(true, false, true), 352f, vec4<i32>(2147483647i, -14903i, 0i, 26998i), Struct_1(vec4<u32>(1u, 4294967295u, 69799u, 4294967295u), false, false, vec3<u32>(4294967295u, 8269u, 54177u)), Struct_1(vec4<u32>(23183u, 0u, 4294967295u, 68498u), false, false, vec3<u32>(14420u, 1u, 1u))), Struct_2(vec3<bool>(false, false, false), 882f, vec4<i32>(-49279i, 1101i, -24956i, 0i), Struct_1(vec4<u32>(0u, 9483u, 0u, 9028u), true, false, vec3<u32>(5618u, 103224u, 0u)), Struct_1(vec4<u32>(4294967295u, 15692u, 0u, 37723u), true, true, vec3<u32>(4294967295u, 1u, 87961u))));

var<private> global1: Struct_5;

var<private> global2: array<f32, 19>;

var<private> global3: array<bool, 31> = array<bool, 31>(false, true, true, false, false, false, true, false, false, true, false, true, false, true, true, true, false, true, false, true, false, true, true, true, true, true, true, false, true, false, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_f32(floor(arg_1.b)), arg_1.c, arg_1.d, Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(arg_1.e.a, vec4<u32>(1u, 32284u, 1u, u_input.a.x)), ~vec4<u32>(arg_1.e.a.x, arg_1.e.d.x, 29219u, 38856u)), (_wgslsmith_mod_u32(26869u, arg_1.e.a.x) ^ ~arg_1.d.a.x) < abs(u_input.b.x), arg_1.e.a.x >= 16854u, arg_1.e.d));
    var var_1 = any(var_0.a.yz);
    var_1 = true;
    global3 = array<bool, 31>();
    var var_2 = vec4<i32>(60512i, arg_1.c.x, _wgslsmith_clamp_i32(-8282i, -arg_1.c.x, global1.d.x), -abs(global1.e.x));
    return ~4294967295u;
}

fn func_2() -> u32 {
    let var_0 = -_wgslsmith_mod_vec3_i32(vec3<i32>(12737i | global1.d.x, global1.d.x, -30640i), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.d.x, global1.e.x, -9345i), vec3<i32>(396i, global1.d.x, global1.d.x)) & ~vec3<i32>(-27214i, 25552i, 1i)) << (vec3<u32>(u_input.a.x, (0u << ((38830u ^ u_input.a.x) % 32u)) ^ ~func_3(global1.d.x, global0[_wgslsmith_index_u32(56776u, 7u)]), 19704u) % vec3<u32>(32u));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * 1035f))))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 19u)]), global1.c, vec2<i32>(var_0.x, ~1i), vec2<i32>(var_0.x, -10985i) << (_wgslsmith_clamp_vec2_u32(abs(~u_input.b.wz), reverseBits(abs(u_input.b.ww)), select(vec2<u32>(1u, u_input.a.x) & vec2<u32>(77327u, u_input.a.x), u_input.b.zy, !vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], global1.c.b))) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_sub_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), max(u_input.b.xyz, u_input.b.xyy), ~vec3<u32>(4294967295u, u_input.b.x, 47753u))), _wgslsmith_mult_vec3_u32(~u_input.b.xzw, min(vec3<u32>(u_input.a.x, 32751u, u_input.a.x), select(vec3<u32>(130858u, 1u, 15447u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x), !vec3<bool>(true, true, global1.c.b)))));
    global2 = array<f32, 19>();
    var var_3 = vec3<bool>(any(!vec3<bool>(false, any(vec4<bool>(var_1.c.b, true, global3[_wgslsmith_index_u32(1u, 31u)], true)), global3[_wgslsmith_index_u32(~u_input.a.x, 31u)])), global1.c.b, true);
    return ~(~func_3(var_1.d.x, global0[_wgslsmith_index_u32(countOneBits(~1u), 7u)]));
}

fn func_1() -> Struct_2 {
    var var_0 = 50301u;
    let var_1 = vec3<bool>(any(select(!select(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 31u)]), vec2<bool>(global1.c.a, global1.c.b), false), !select(vec2<bool>(global1.c.b, global3[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], false), true), vec2<bool>(global3[_wgslsmith_index_u32(~1u, 31u)], global3[_wgslsmith_index_u32(~u_input.a.x, 31u)]))), !global3[_wgslsmith_index_u32(~(~func_2()), 31u)], global3[_wgslsmith_index_u32(abs(u_input.b.x), 31u)]);
    var var_2 = Struct_4(1u, vec3<u32>(u_input.b.x, ~(0u | u_input.b.x) >> (~(u_input.a.x & u_input.b.x) % 32u), u_input.b.x));
    var var_3 = !var_1;
    let var_4 = global1.c;
    return global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(98957u, ~_wgslsmith_dot_vec2_u32(select(u_input.a, vec2<u32>(0u, 1u), vec2<bool>(var_1.x, var_4.b)), vec2<u32>(var_2.b.x, 15071u))), 7u)];
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_5) -> Struct_2 {
    global3 = array<bool, 31>();
    global1 = arg_3;
    global2 = array<f32, 19>();
    var var_0 = arg_3;
    global1 = arg_3;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c;
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], all(vec3<bool>(true, !(!var_0.a), !(4294967295u < u_input.a.x))));
    global3 = array<bool, 31>();
    let var_2 = var_1;
    var var_3 = var_2.a;
    var var_4 = func_4(true || var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global1.a.x, global1.b), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], 1012f, 1482f), vec3<bool>(global1.c.a, false, var_1.b))))))), func_1(), Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-791f + global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + global1.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 19u)])))), var_2, _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(global1.d, global1.d)), vec2<i32>(-23486i, global1.d.x)), -select(-global1.d, _wgslsmith_add_vec2_i32(global1.e, global1.e), !var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.d.d, 1u);
}

