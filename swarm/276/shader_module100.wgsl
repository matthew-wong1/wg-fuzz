struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<f32>(-2204f, 1248f), -1400f, vec2<i32>(-1i, 53381i))), Struct_2(Struct_1(vec2<f32>(895f, 1733f), 909f, vec2<i32>(-1i, -1i))), Struct_2(Struct_1(vec2<f32>(-104f, -2351f), 480f, vec2<i32>(-37711i, 833i))), Struct_2(Struct_1(vec2<f32>(-1701f, -374f), -740f, vec2<i32>(-5012i, i32(-2147483648)))), Struct_2(Struct_1(vec2<f32>(-867f, -262f), 613f, vec2<i32>(-6307i, -14460i))), Struct_2(Struct_1(vec2<f32>(-498f, -533f), 392f, vec2<i32>(0i, 2147483647i))), Struct_2(Struct_1(vec2<f32>(677f, 496f), -237f, vec2<i32>(47622i, i32(-2147483648)))), Struct_2(Struct_1(vec2<f32>(-707f, 1087f), -286f, vec2<i32>(i32(-2147483648), -1i))), Struct_2(Struct_1(vec2<f32>(-287f, -630f), -590f, vec2<i32>(7375i, -13415i))), Struct_2(Struct_1(vec2<f32>(262f, -489f), -511f, vec2<i32>(10990i, 49485i))), Struct_2(Struct_1(vec2<f32>(-1000f, 1677f), -400f, vec2<i32>(1i, -25833i))), Struct_2(Struct_1(vec2<f32>(1000f, 621f), 972f, vec2<i32>(2147483647i, 1i))), Struct_2(Struct_1(vec2<f32>(1000f, -968f), 667f, vec2<i32>(28824i, -63333i))), Struct_2(Struct_1(vec2<f32>(-1559f, 155f), -689f, vec2<i32>(1i, -24869i))), Struct_2(Struct_1(vec2<f32>(-755f, -1000f), 714f, vec2<i32>(10334i, 1i))), Struct_2(Struct_1(vec2<f32>(1000f, -2971f), 1000f, vec2<i32>(44888i, 5327i))), Struct_2(Struct_1(vec2<f32>(487f, -1031f), 1000f, vec2<i32>(-66637i, 41447i))), Struct_2(Struct_1(vec2<f32>(1248f, -423f), -710f, vec2<i32>(11292i, 13121i))), Struct_2(Struct_1(vec2<f32>(-179f, -444f), 1040f, vec2<i32>(0i, 23482i))), Struct_2(Struct_1(vec2<f32>(-1000f, 249f), -286f, vec2<i32>(-13047i, -2547i))), Struct_2(Struct_1(vec2<f32>(1268f, 542f), -403f, vec2<i32>(i32(-2147483648), -1i))), Struct_2(Struct_1(vec2<f32>(-1000f, 310f), -426f, vec2<i32>(-22456i, 61155i))));

var<private> global2: vec2<u32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = ~(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(global2.x, 4u)], global0[_wgslsmith_index_u32(4625u, 4u)], global2.x) ^ vec4<u32>(73291u, 4294967295u, global2.x, global2.x), ~vec4<u32>(1u, 35477u, 1u, 1u)), firstTrailingBit(vec4<u32>(50302u, global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) << (vec4<u32>(42722u, 0u, global0[_wgslsmith_index_u32(3764u, 4u)], global2.x) % vec4<u32>(32u))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false))) | vec4<u32>(firstLeadingBit(select(u_input.a.x, 4294967295u, true)), ~0u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~global2.x)));
    return 1i;
}

fn func_2(arg_0: f32) -> vec2<bool> {
    var var_0 = false;
    global0 = array<u32, 4>();
    global1 = array<Struct_2, 22>();
    let var_1 = func_3();
    var var_2 = Struct_3(select(firstLeadingBit(~abs(vec4<u32>(u_input.a.x, global2.x, 0u, 4294967295u))), select(vec4<u32>(~1u, 0u, _wgslsmith_add_u32(global2.x, 15692u), u_input.a.x), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(14617u, global0[_wgslsmith_index_u32(global2.x, 4u)], 0u, 1u), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 4u)])), abs(vec4<u32>(u_input.a.x, global2.x, 4294967295u, 74644u))), false), vec4<bool>(false, true, select(true, true, true) | false, false)));
    return vec2<bool>(select(all(vec2<bool>(true, true)) & (abs(var_2.a.x) <= 1u), !(arg_0 < -277f) != true, select(true, true, false)), !(_wgslsmith_f_op_f32(arg_0 * arg_0) != arg_0) || (var_1 >= _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1, -9426i), reverseBits(vec2<i32>(var_1, var_1)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = !(!(!vec3<bool>(false, all(vec2<bool>(false, false)), false)));
    global1 = array<Struct_2, 22>();
    let var_1 = -2147483647i;
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.a.zx << (u_input.a.zx % vec2<u32>(32u)), vec2<u32>(u_input.b, 30586u)), vec2<u32>(~0u, 4294967295u)));
    let var_3 = select(var_0.x, all(select(select(!var_0.xx, var_0.xz, true), func_2(-373f), false)), !var_0.x);
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1702f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1075f * -1127f) * _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1539f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-969f * -181f) + _wgslsmith_f_op_f32(-269f - 780f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(860f, 1309f)), _wgslsmith_f_op_f32(f32(-1f) * -1294f), false)), !func_2(1667f).x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 10844u;
    global2 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~79416u, ~global0[_wgslsmith_index_u32(101535u, 4u)]), (_wgslsmith_mod_vec2_u32(u_input.a.zz, u_input.a.yx) ^ (vec2<u32>(u_input.a.x, global2.x) >> (vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global2.x, 4u)]) % vec2<u32>(32u)))) << (u_input.a.yx % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(~global2.x, 48408u)));
    let var_1 = Struct_4(~u_input.a.x, Struct_3(vec4<u32>(~global0[_wgslsmith_index_u32(85868u, 4u)], 4294967295u << (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, 1u, global0[_wgslsmith_index_u32(0u, 4u)]), 4u)] % 32u), ~34386u, u_input.b)));
    global2 = ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_1.b.a.xz, vec2<u32>(u_input.a.x, u_input.b)), ~_wgslsmith_mult_u32(u_input.b, global0[_wgslsmith_index_u32(0u, 4u)])), global0[_wgslsmith_index_u32(1u >> (var_1.b.a.x % 32u), 4u)]);
    global2 = firstTrailingBit(~var_1.b.a.yx);
    let x = u_input.a;
    s_output = func_1();
}

