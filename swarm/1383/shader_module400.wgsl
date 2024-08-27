struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<f32, 32> = array<f32, 32>(260f, 1090f, 515f, 1194f, -596f, -1449f, 203f, -181f, -1231f, 404f, 1070f, -1378f, 385f, -830f, 1740f, -1217f, -834f, -766f, 1258f, 1210f, 567f, -1364f, -1000f, -1165f, 1454f, 857f, -274f, -768f, 717f, -193f, 899f, -397f);

var<private> global2: Struct_2 = Struct_2(true, vec3<i32>(27965i, 4993i, 40594i), vec4<u32>(28067u, 29557u, 1408u, 24839u), Struct_1(189f, -27884i, vec2<u32>(1u, 0u), vec2<i32>(2147483647i, 0i), vec4<bool>(true, false, false, false)), vec2<u32>(4294967295u, 7220u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    var var_0 = ~arg_2.c.wzz;
    var var_1 = any(!global2.d.e);
    global1 = array<f32, 32>();
    let var_2 = select(vec3<bool>(arg_2.a, all(vec4<bool>(true, !global2.a, !global2.a, any(global2.d.e.xy))), any(vec2<bool>(true, !arg_2.d.e.x))), arg_2.d.e.wwz, arg_2.d.e.zyy);
    var_1 = all(select(arg_2.d.e.xw, global2.d.e.wz, vec2<bool>(var_2.x, var_2.x)));
    return (34702u ^ firstTrailingBit(countOneBits(9007u))) >> (arg_2.d.c.x % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_3(arg_1.c.x, arg_0.a.b, arg_0.a, u_input.a), 32u)]))), max(~_wgslsmith_mod_i32(-1i, abs(-2147483647i)), 2250i), global2.e, vec2<i32>(arg_0.a.d.d.x, global2.d.b), !global2.d.e);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2171f * _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, arg_1.c.x), 32u)], _wgslsmith_f_op_f32(1339f - global2.d.a)))) + global2.d.a));
    var var_2 = arg_0;
    var var_3 = var_0;
    var_3 = var_2.a.d;
    return var_3.e.x;
}

fn func_1(arg_0: vec4<bool>) -> vec4<u32> {
    global2 = Struct_2(select(global2.e.x == global2.d.c.x, !(func_2(Struct_3(Struct_2(true, vec3<i32>(-1i, global2.b.x, 15930i), global2.c, global2.d, global2.d.c), vec3<bool>(false, true, global2.d.e.x)), Struct_1(global2.d.a, 66316i, u_input.a.yz, vec2<i32>(global2.b.x, -12309i), arg_0), vec3<i32>(global2.d.d.x, global2.b.x, global2.b.x), global2.c.x) && select(arg_0.x, true, false)), any(select(vec4<bool>(true, true, true, true), !arg_0, vec4<bool>(false, false, false, false)))), ~vec3<i32>(~global2.d.b ^ ~(-10704i), 32398i, firstLeadingBit(~(-2147483647i))), countOneBits(~global2.c), global2.d, vec2<u32>(1u, 1u));
    global2 = Struct_2(select(-max(global2.d.d.x, 30565i) <= global2.b.x, any(arg_0), select(true, true, any(select(vec4<bool>(arg_0.x, true, true, false), vec4<bool>(global2.a, arg_0.x, arg_0.x, true), vec4<bool>(false, global2.d.e.x, true, true))))), ~_wgslsmith_mult_vec3_i32(~min(global2.b, vec3<i32>(34800i, global2.b.x, 1i)), vec3<i32>(reverseBits(-15995i), 45991i, firstTrailingBit(global2.d.b))), global2.c, global2.d, ~(~(vec2<u32>(61902u, 36139u) & global2.e) & ~vec2<u32>(1u, global2.d.c.x)));
    global1 = array<f32, 32>();
    global2 = Struct_2(true, vec3<i32>(abs(~13301i), global2.d.d.x >> ((27748u | func_3(10342u, vec3<i32>(-25324i, 33179i, -26222i), Struct_2(false, vec3<i32>(-37554i, global2.d.b, 1i), global2.c, Struct_1(global1[_wgslsmith_index_u32(0u, 32u)], 1i, u_input.a.yz, vec2<i32>(global2.d.b, -2147483647i), vec4<bool>(false, false, false, false)), global2.e), u_input.a)) % 32u), 0i), vec4<u32>(~firstTrailingBit(~u_input.a.x), ~7593u, firstLeadingBit(14926u), 46189u), global2.d, _wgslsmith_add_vec2_u32(global2.d.c, max(~vec2<u32>(0u, global2.c.x), select(global2.c.xz, ~u_input.a.xx, true))));
    global1 = array<f32, 32>();
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(global2.c, ~vec4<u32>(61507u, select(_wgslsmith_add_u32(u_input.a.x, 4294967295u), max(1u, global2.e.x), true), 0u, u_input.a.x));
    let var_1 = !any(!select(vec4<bool>(true, global2.a, global2.a, false), select(vec4<bool>(global2.a, true, global2.a, false), global2.d.e, global2.a), !vec4<bool>(true, false, global2.a, global2.a)));
    let var_2 = Struct_2(all(global2.d.e.zw), vec3<i32>(-9110i, _wgslsmith_mult_i32(global2.d.b, min(global2.d.b, 0i)), countOneBits(_wgslsmith_sub_i32(global2.b.x << (4294967295u % 32u), 1i | global2.b.x))), func_1(!(!(!vec4<bool>(var_1, global2.a, global2.a, var_1)))), global2.d, func_1(global2.d.e).xy);
    let var_3 = true;
    let var_4 = Struct_3(var_2, vec3<bool>(any(!var_2.d.e.wz), select(!any(global2.d.e.yx), !all(vec4<bool>(false, var_2.d.e.x, var_3, var_2.d.e.x)), (global2.e.x ^ 34949u) != ~20834u), any(vec4<bool>(var_2.e.x <= var_2.c.x, true, global2.a == false, var_2.d.e.x))));
    var var_5 = var_4.a.b ^ (vec3<i32>(firstLeadingBit(global2.b.x) ^ max(var_2.b.x, var_4.a.d.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.b, var_4.a.b.x, 21490i, -4489i), vec4<i32>(-11504i, var_4.a.b.x, var_4.a.b.x, -9370i)), -34466i) ^ _wgslsmith_mod_vec3_i32(firstLeadingBit(~var_4.a.b), -var_4.a.b << (~var_4.a.c.zzx % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), ~(vec4<u32>(2956u, var_0.x, 1u, var_0.x) | reverseBits(global2.c)) & _wgslsmith_mod_vec4_u32(global2.c, var_2.c), ~1u);
}

