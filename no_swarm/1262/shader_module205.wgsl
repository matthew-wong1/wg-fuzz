struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec3<i32>(-5149i, 0i, 51579i), 4294967295u), vec4<i32>(-15765i, i32(-2147483648), 0i, 0i), true, true, 200f), Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, 1i), 4294967295u), vec4<i32>(i32(-2147483648), -1i, 2147483647i, -1i), true, false, -731f), Struct_2(Struct_1(vec3<i32>(0i, 65603i, 1i), 4294967295u), vec4<i32>(-1i, -54018i, 2147483647i, 1i), true, true, 2387f), Struct_2(Struct_1(vec3<i32>(-1i, -16960i, -1i), 25123u), vec4<i32>(1i, i32(-2147483648), -1i, 1i), false, false, -968f), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, 973i), 1u), vec4<i32>(4800i, 16399i, 20585i, -17243i), false, true, 482f), Struct_2(Struct_1(vec3<i32>(44482i, -1i, 1i), 4294967295u), vec4<i32>(43678i, -1i, 2147483647i, -1i), true, true, 384f), Struct_2(Struct_1(vec3<i32>(1i, -1i, -1i), 61663u), vec4<i32>(-39837i, i32(-2147483648), i32(-2147483648), -9881i), false, false, 1712f), Struct_2(Struct_1(vec3<i32>(-1i, -29423i, 74423i), 1u), vec4<i32>(1i, -51373i, -1i, 4633i), true, true, 1690f), Struct_2(Struct_1(vec3<i32>(1484i, 86053i, 1i), 55398u), vec4<i32>(-605i, -54272i, -1i, -30377i), true, true, -1978f), Struct_2(Struct_1(vec3<i32>(-95i, 19535i, 2147483647i), 38358u), vec4<i32>(2147483647i, -10957i, 2147483647i, 3110i), false, true, -163f), Struct_2(Struct_1(vec3<i32>(-1i, 0i, 15695i), 1u), vec4<i32>(-21220i, -19691i, 21569i, 0i), false, true, -1307f), Struct_2(Struct_1(vec3<i32>(0i, -12219i, 2147483647i), 1u), vec4<i32>(1i, -30i, -1i, 2147483647i), false, true, -836f), Struct_2(Struct_1(vec3<i32>(0i, 721i, 10846i), 69732u), vec4<i32>(-2660i, -37518i, -7986i, -38545i), true, false, -432f), Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), 21743i), 4294967295u), vec4<i32>(2147483647i, 19529i, -24685i, 3245i), true, false, 1935f), Struct_2(Struct_1(vec3<i32>(22604i, -62804i, i32(-2147483648)), 32592u), vec4<i32>(2147483647i, i32(-2147483648), 93001i, i32(-2147483648)), true, false, 139f), Struct_2(Struct_1(vec3<i32>(-37401i, 1i, i32(-2147483648)), 0u), vec4<i32>(2147483647i, 2147483647i, 10069i, 0i), false, false, 907f), Struct_2(Struct_1(vec3<i32>(3705i, 2147483647i, -35487i), 5711u), vec4<i32>(-7397i, i32(-2147483648), 8145i, i32(-2147483648)), false, false, -975f), Struct_2(Struct_1(vec3<i32>(6956i, 0i, 36941i), 22943u), vec4<i32>(-8040i, 50681i, 15214i, 28786i), true, true, -238f), Struct_2(Struct_1(vec3<i32>(2147483647i, -27406i, -2502i), 1u), vec4<i32>(-1i, -21976i, 2147483647i, -1494i), true, true, 1822f), Struct_2(Struct_1(vec3<i32>(37443i, 0i, -38957i), 28266u), vec4<i32>(1i, 17302i, 38107i, 0i), true, true, 486f), Struct_2(Struct_1(vec3<i32>(1i, -12283i, 1i), 45525u), vec4<i32>(27046i, 43382i, -1i, 34187i), true, true, 1122f), Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), 34490u), vec4<i32>(64725i, 1i, i32(-2147483648), -1i), false, true, -459f), Struct_2(Struct_1(vec3<i32>(-7322i, 71001i, 2147483647i), 0u), vec4<i32>(2147483647i, -20307i, 13487i, 45881i), true, false, 1062f), Struct_2(Struct_1(vec3<i32>(17632i, 33191i, i32(-2147483648)), 80806u), vec4<i32>(1i, 108446i, 4305i, 22954i), false, false, -1267f), Struct_2(Struct_1(vec3<i32>(38173i, -1i, 1601i), 6151u), vec4<i32>(47262i, 1i, 21783i, i32(-2147483648)), false, false, -1224f), Struct_2(Struct_1(vec3<i32>(0i, -21502i, -20411i), 22133u), vec4<i32>(1i, i32(-2147483648), 6670i, 6733i), false, false, -1000f), Struct_2(Struct_1(vec3<i32>(-485i, -14956i, 15283i), 4294967295u), vec4<i32>(37040i, 7027i, 30609i, 1i), true, false, 902f), Struct_2(Struct_1(vec3<i32>(3669i, -1i, -60540i), 1u), vec4<i32>(35544i, 14486i, i32(-2147483648), i32(-2147483648)), false, false, -1711f), Struct_2(Struct_1(vec3<i32>(-64510i, 40909i, -1i), 52013u), vec4<i32>(18000i, -67505i, 2147483647i, i32(-2147483648)), true, false, -554f), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 76425i, 0i), 319u), vec4<i32>(-1i, -73216i, i32(-2147483648), 4767i), true, true, 100f));

var<private> global2: Struct_2;

var<private> global3: u32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    global1 = array<Struct_2, 30>();
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(1u), 30u)];
    let var_1 = 28908i;
    var var_2 = arg_1;
    let var_3 = Struct_1(vec3<i32>(global2.b.x, 1841i, -1i), global2.a.b);
    return ~vec2<u32>(reverseBits(select(var_3.b, ~arg_0, global2.c && var_0.d)), ~(~1u) ^ var_2.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(~_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(8846u, arg_1.b) | vec2<u32>(arg_1.b, arg_1.b))), vec2<u32>(1u, arg_1.b), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.a.b, 53490u), vec2<u32>(0u, arg_1.b))));
    var_0 = vec2<u32>(~global2.a.b, countOneBits(_wgslsmith_add_u32(17234u, ~var_0.x))) ^ vec2<u32>(arg_1.b, _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global2.a.b, 24582u, global2.a.b), vec4<u32>(12156u, 1u, 1u, 13026u)), ~vec4<u32>(global2.a.b, 1u, arg_1.b, 4294967295u), all(vec4<bool>(global2.d, true, global2.c, true))), ~(vec4<u32>(0u, global2.a.b, global2.a.b, 0u) << (vec4<u32>(var_0.x, 0u, var_0.x, var_0.x) % vec4<u32>(32u)))));
    var_0 = vec2<u32>(~26213u, ~_wgslsmith_dot_vec2_u32(func_2(4294967295u | var_0.x, global2.a), abs(min(vec2<u32>(var_0.x, 5511u), vec2<u32>(1u, global2.a.b)))));
    let var_1 = Struct_2(arg_1, global2.b, !(u_input.a.x > select(arg_1.a.x, ~arg_1.a.x, false)), !(!global2.c), -312f);
    var var_2 = arg_1;
    return Struct_2(Struct_1(arg_1.a, var_0.x), vec4<i32>(select(arg_0.x, ~(-u_input.a.x), !var_1.c), ~26790i, select(max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, 1i, var_2.a.x, -1i), vec4<i32>(-2147483647i, -18475i, -559i, var_2.a.x)), abs(1i)), max(_wgslsmith_dot_vec2_i32(var_1.a.a.xx, vec2<i32>(u_input.a.x, arg_0.x)), -2147483647i >> (var_1.a.b % 32u)), true), arg_1.a.x), var_1.c, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1542f) - global2.e) * _wgslsmith_f_op_f32(f32(-1f) * -436f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = vec3<bool>(true, arg_0.d, any(vec2<bool>(false, any(vec4<bool>(arg_0.c, arg_0.d, global2.d, false)))));
    let var_1 = max(vec4<u32>(_wgslsmith_sub_u32(54088u, 0u) >> (arg_0.a.b % 32u), arg_0.a.b, max(_wgslsmith_clamp_u32(~0u, abs(43062u), firstTrailingBit(arg_0.a.b)), abs(func_2(0u, Struct_1(vec3<i32>(u_input.a.x, arg_0.b.x, 2147483647i), 1u)).x)), ~4294967295u), vec4<u32>(abs(arg_0.a.b), countOneBits(global2.a.b), 32330u, ~firstTrailingBit(~120894u)));
    global0 = !func_1(arg_0.a.a.xx, Struct_1((vec3<i32>(global2.b.x, global2.b.x, -2147483647i) ^ vec3<i32>(u_input.a.x, -2147483647i, arg_0.a.a.x)) | arg_0.b.wzx, countOneBits(arg_0.a.b ^ global2.a.b))).c;
    var var_2 = global2.e;
    var var_3 = func_1(-vec2<i32>(countOneBits(-2147483647i), 19394i), arg_0.a).a;
    return ~max(max(~2147483647i, var_3.a.x & u_input.a.x), arg_0.a.a.x) << (var_1.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-global2.b.x, global2.a.a.x, u_input.a.x, 37642i);
    var_0 = ~u_input.a;
    let var_1 = !global2.d;
    var var_2 = func_1(vec2<i32>(_wgslsmith_sub_i32(67076i, 6432i), u_input.a.x), Struct_1(u_input.a.wxx, global2.a.b));
    var_2 = Struct_2(var_2.a, vec4<i32>(var_2.a.a.x, var_2.a.a.x, -3829i, -(~func_3(Struct_2(Struct_1(vec3<i32>(var_0.x, var_2.b.x, global2.a.a.x), global2.a.b), u_input.a, var_2.d, false, 310f)))), var_2.d, false, _wgslsmith_f_op_f32(var_2.e + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(687f, _wgslsmith_f_op_f32(-global2.e))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1144f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(ceil(471f)), global2.e, _wgslsmith_f_op_f32(global2.e + var_2.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-203f)), 841f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.e))))), vec4<u32>(~4294967295u, ~(~var_2.a.b | 33267u), ~31325u, ~countOneBits(~9194u)));
}

