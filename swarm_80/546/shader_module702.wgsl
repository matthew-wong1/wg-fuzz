struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-261f, 1363f, -584f, -1409f), -721f, 1335f, -3188i);

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(218f, 977f, -1277f, -1000f), -1281f, 1828f, i32(-2147483648)), Struct_1(vec4<f32>(1724f, -1000f, -1343f, 307f), 1784f, -1000f, -13927i), Struct_1(vec4<f32>(-1080f, -310f, -702f, -1028f), 537f, -489f, 8934i), Struct_1(vec4<f32>(332f, 301f, 830f, 1592f), -1248f, 787f, 2147483647i), Struct_1(vec4<f32>(-452f, 1000f, -402f, -1366f), 607f, 2175f, 2147483647i), Struct_1(vec4<f32>(-2468f, 384f, -1117f, -638f), -839f, -675f, 1i), Struct_1(vec4<f32>(-176f, -405f, -962f, 357f), -1629f, -1549f, 24921i), Struct_1(vec4<f32>(-1325f, -2257f, 281f, -1359f), 952f, -672f, 1i), Struct_1(vec4<f32>(-468f, 228f, -169f, -725f), 458f, -641f, 2147483647i), Struct_1(vec4<f32>(-465f, 172f, -629f, 936f), -1000f, -1613f, 2147483647i), Struct_1(vec4<f32>(408f, -436f, -1998f, 170f), 464f, 1000f, 33641i), Struct_1(vec4<f32>(-1000f, -947f, 304f, -905f), -257f, 909f, -5640i), Struct_1(vec4<f32>(-1620f, -600f, -1767f, -1169f), 287f, 1000f, 47705i), Struct_1(vec4<f32>(849f, 1532f, 1919f, 655f), -455f, -427f, -4057i), Struct_1(vec4<f32>(850f, -2007f, -2566f, 1421f), 952f, -546f, -38350i), Struct_1(vec4<f32>(334f, -2736f, 724f, 768f), -1558f, -946f, 14280i), Struct_1(vec4<f32>(-1266f, -1000f, -344f, 2238f), 1358f, -113f, 0i), Struct_1(vec4<f32>(-811f, 693f, -287f, -413f), -1011f, 1000f, -1i), Struct_1(vec4<f32>(-130f, -1000f, 1156f, 2000f), -1105f, 1000f, -29402i));

var<private> global4: vec4<f32> = vec4<f32>(-566f, 110f, -282f, 757f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<bool> {
    global2 = u_input.d;
    let var_0 = arg_3;
    global4 = global0.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - arg_3.a))) + vec2<f32>(_wgslsmith_f_op_f32(select(global0.b, -597f, !arg_3.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(439f)), _wgslsmith_f_op_f32(global4.x * 929f))))));
    let var_2 = Struct_4(arg_1, _wgslsmith_mult_i32(-2147483647i, global0.d), select(select(vec2<bool>(all(vec4<bool>(var_0.b, false, arg_3.b, false)), all(vec3<bool>(var_0.b, arg_3.b, false))), !select(vec2<bool>(false, var_0.b), vec2<bool>(false, false), false), (global1.d >> (0u % 32u)) == _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(2147483647i, -2708i))), vec2<bool>((global0.d ^ 63502i) >= _wgslsmith_mod_i32(u_input.b, -5416i), !(global1.a.x != 426f)), !vec2<bool>(arg_3.b, 1631f != var_1.x)));
    return vec2<bool>(false, any(!vec3<bool>(false & var_2.a.a.b, !var_2.c.x, select(true, arg_3.b, arg_1.a.b))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> bool {
    var var_0 = Struct_4(arg_1.a, arg_0.b, select(!vec2<bool>(u_input.e.x < 1u, false), select(arg_1.c, !func_3(-791f, arg_0.a, vec2<i32>(-78535i, -17457i), arg_0.a.a), vec2<bool>(arg_0.a.a.b, true)), true));
    var var_1 = vec3<i32>(u_input.b, _wgslsmith_div_i32(~(-arg_1.b), abs(arg_1.b)), _wgslsmith_div_i32(0i, firstTrailingBit(~select(-1i, arg_0.b, true))));
    var var_2 = 16228u;
    let var_3 = u_input.d;
    let var_4 = countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(global2.x, global2.x, var_3.x), u_input.d), u_input.d), u_input.e.x, 1u, ~_wgslsmith_dot_vec2_u32(var_3.zz, u_input.d.xx))) ^ countOneBits(vec4<u32>(var_3.x, 1u & ~var_3.x, firstLeadingBit(firstTrailingBit(81483u)), _wgslsmith_mult_u32(~u_input.a.x, 0u)));
    return true;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))), !any(vec3<bool>(false, true, func_2(Struct_4(Struct_3(Struct_2(1816f, false)), u_input.c, vec2<bool>(true, true)), Struct_4(Struct_3(Struct_2(global1.a.x, false)), 1i, vec2<bool>(false, true))))));
    let var_1 = max(vec4<u32>(reverseBits(~52206u), 4294967295u, 12117u, global2.x), vec4<u32>(30619u, ~4294967295u, 24396u, 0u));
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.a)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1008f, 555f, _wgslsmith_f_op_f32(f32(-1f) * -863f)), vec4<f32>(257f, global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1700f), global1.c)))));
    global1 = global3[_wgslsmith_index_u32(u_input.a.x, 19u)];
    let var_2 = var_0.b;
    return StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.d, global0.d, ~global0.d, _wgslsmith_mod_i32(global1.d, global1.d)) << (firstTrailingBit(~vec4<u32>(u_input.e.x, global2.x, 16659u, u_input.e.x)) % vec4<u32>(32u)), -firstTrailingBit(-vec4<i32>(u_input.c, 1i, 0i, 40122i))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, -215f, -1419f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1505f, global1.b, global4.x))))))), vec3<i32>(-1i, -2147483647i, select(global1.d, max(-30021i, abs(1i)), any(vec3<bool>(var_0.b, false, var_2)))), ~max(min(u_input.a, ~vec2<u32>(var_1.x, 0u)), select(vec2<u32>(5950u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(61372u, 0u), vec2<u32>(u_input.d.x, 0u)), vec2<bool>(true, true))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, u_input.c, -39395i), abs(vec4<i32>(u_input.c, -18457i, global0.d, -2147483647i))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-26430i, -46275i), -56780i)), select(min(vec2<i32>(0i, -2147483647i), vec2<i32>(1i, u_input.b)) | (vec2<i32>(33344i, global1.d) ^ vec2<i32>(-2147483647i, -4623i)), select(vec2<i32>(8891i, global1.d), vec2<i32>(u_input.b, 35217i), vec2<bool>(false, var_2)) ^ select(vec2<i32>(global1.d, global1.d), vec2<i32>(u_input.b, -22520i), true), func_2(Struct_4(Struct_3(Struct_2(var_0.a, var_2)), global1.d, vec2<bool>(var_2, true)), Struct_4(Struct_3(Struct_2(global4.x, var_0.b)), u_input.b, vec2<bool>(var_0.b, false))) & false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    let x = u_input.a;
    s_output = func_1();
}

