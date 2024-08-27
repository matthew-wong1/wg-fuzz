struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true));

var<private> global1: Struct_2 = Struct_2(vec2<i32>(2147483647i, 56105i), -27216i, Struct_1(false), vec3<i32>(2147483647i, 0i, 0i), Struct_1(true));

var<private> global2: array<bool, 14> = array<bool, 14>(true, true, true, false, false, false, false, true, true, true, false, true, false, true);

var<private> global3: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-319f, 349f), vec2<f32>(-1213f, -1605f), vec2<f32>(-345f, -794f), vec2<f32>(1447f, 1331f), vec2<f32>(1243f, 859f), vec2<f32>(-388f, 119f), vec2<f32>(-1709f, 1008f), vec2<f32>(1119f, 480f), vec2<f32>(781f, -700f), vec2<f32>(-793f, 1002f), vec2<f32>(-981f, -1445f), vec2<f32>(-163f, 1000f), vec2<f32>(403f, -2573f), vec2<f32>(1223f, 458f), vec2<f32>(1045f, -426f), vec2<f32>(418f, -849f), vec2<f32>(1000f, 1989f), vec2<f32>(1005f, -1399f), vec2<f32>(1217f, -1000f), vec2<f32>(282f, 1872f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> u32 {
    global2 = array<bool, 14>();
    return u_input.a.x;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = all(select(select(!vec2<bool>(true, arg_0.e.a), !vec2<bool>(false, global1.c.a), global2[_wgslsmith_index_u32(arg_2, 14u)] | global1.c.a), !select(vec2<bool>(global1.e.a, global2[_wgslsmith_index_u32(arg_2, 14u)]), vec2<bool>(true, true), vec2<bool>(global1.e.a, true)), select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]), vec2<bool>(false, true), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 14u)])), !vec2<bool>(global1.e.a, true), vec2<bool>(false, arg_0.c.a)))) || any(!vec3<bool>(any(vec3<bool>(arg_0.c.a, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], true)), !global2[_wgslsmith_index_u32(arg_2, 14u)], true));
    let var_1 = arg_2;
    let var_2 = arg_0.d.x;
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_div_u32(_wgslsmith_div_u32(53437u, 4294967295u), ~75374u)), ~(~(~u_input.a.x & _wgslsmith_mod_u32(var_1, var_1)))), 14u)];
    var var_3 = Struct_1((arg_0.d.x << (4294967295u % 32u)) <= -(arg_0.d.x ^ 0i));
    return _wgslsmith_f_op_f32(f32(-1f) * -839f);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = arg_3.xzx;
    let var_1 = u_input.b.x;
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-31256i, -select(-1i, -9618i, global1.e.a), abs(30032i)), global1.d), -(global1.d << (~(u_input.a.ywx >> (arg_0 % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~select(global1.d | vec3<i32>(global1.a.x, 0i, global1.b), firstLeadingBit(global1.d), !vec3<bool>(arg_3.x, global1.c.a, true))));
}

fn func_1() -> Struct_2 {
    global1 = Struct_2(u_input.b, min(-2147483647i, i32(-1i) * -86112i), global1.e, func_4(vec3<u32>(func_2(global3[_wgslsmith_index_u32(1u, 20u)], true, Struct_2(global1.d.yy, global1.b, Struct_1(false), vec3<i32>(u_input.b.x, -1i, -1i), Struct_1(true)), false), 4294967295u, ~u_input.a.x) & (u_input.a.xwx >> (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u))), u_input.a | u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1681f)))), _wgslsmith_f_op_f32(func_3(Struct_2(u_input.b, 2147483647i, Struct_1(global2[_wgslsmith_index_u32(45853u, 14u)]), vec3<i32>(global1.b, 2147483647i, u_input.b.x), global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), u_input.b.x, ~u_input.a.x)), all(!vec3<bool>(true, global1.e.a, global2[_wgslsmith_index_u32(u_input.a.x, 14u)])))), select(!vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), select(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 14u)], false), select(vec4<bool>(true, true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)], false, global2[_wgslsmith_index_u32(1u, 14u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], false, true, global2[_wgslsmith_index_u32(1u, 14u)])), !vec4<bool>(global1.c.a, global1.e.a, true, global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), vec4<bool>(global1.c.a, true, all(vec2<bool>(false, true)), global1.c.a))), global1.c);
    let var_0 = ~u_input.a.zzx;
    let var_1 = Struct_2(u_input.b, -12192i, Struct_1(true), -(countOneBits(global1.d) & vec3<i32>(~u_input.b.x, global1.b, select(u_input.b.x, u_input.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]))), Struct_1(!global1.c.a));
    var var_2 = var_0.x;
    var var_3 = 1000f;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = func_1();
    var var_1 = Struct_2(-var_0.d.xx & u_input.b, _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(global1.d.x, 12719i, 14268i, global1.a.x), vec4<i32>(2147483647i, -9694i, 2147483647i, u_input.b.x)) | vec4<i32>(global1.a.x, ~global1.d.x, ~(-2147483647i), global1.a.x), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, global1.a.x), _wgslsmith_add_i32(-31600i, global1.b)), u_input.b.x, u_input.b.x, -58188i)), func_1().e, vec3<i32>(countOneBits(~19649i), _wgslsmith_mod_i32(-2147483647i, var_0.d.x << (u_input.a.x % 32u)), u_input.b.x) | max(abs(vec3<i32>(u_input.b.x, -2147483647i, -2147483647i) << (vec3<u32>(51927u, 0u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(var_0.a.x << (44493u % 32u), ~26531i, global1.b & u_input.b.x)), Struct_1(var_0.e.a && ((-2147483647i >> (u_input.a.x % 32u)) != ~global1.a.x)));
    let var_2 = (u_input.b.x | abs(global1.d.x)) & max(u_input.b.x, 1i & ~reverseBits(var_1.a.x));
    let var_3 = vec4<u32>(firstLeadingBit(u_input.a.x), u_input.a.x, _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x | u_input.a.x)), u_input.a.x), 17661u);
    var var_4 = var_0;
    let var_5 = var_0.d.x;
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_5, global1.d.x), -45305i, min(-select(~vec2<i32>(var_5, -17223i), _wgslsmith_clamp_vec2_i32(var_1.a, global1.d.xy, var_1.d.yy), vec2<bool>(true, true)), ~var_1.d.xz));
}

