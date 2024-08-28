struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false));

var<private> global1: vec3<i32> = vec3<i32>(12926i, -1i, 1i);

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<u32>(50006u, 57171u, 4294967295u), Struct_1(236f, true, false, -850f), vec2<i32>(-1i, 18612i), vec2<f32>(-796f, 547f), vec2<bool>(false, true)), Struct_2(vec3<u32>(0u, 44536u, 30041u), Struct_1(1205f, true, true, 683f), vec2<i32>(-9401i, -1i), vec2<f32>(-273f, 318f), vec2<bool>(true, false)), Struct_2(vec3<u32>(4294967295u, 0u, 2533u), Struct_1(-345f, true, true, 152f), vec2<i32>(1i, i32(-2147483648)), vec2<f32>(-115f, -1087f), vec2<bool>(true, false)), Struct_2(vec3<u32>(1u, 41071u, 63117u), Struct_1(-1363f, false, false, 1291f), vec2<i32>(-16360i, 2147483647i), vec2<f32>(819f, 837f), vec2<bool>(false, true)), Struct_2(vec3<u32>(0u, 72984u, 0u), Struct_1(-645f, true, false, -1733f), vec2<i32>(1i, i32(-2147483648)), vec2<f32>(-981f, 829f), vec2<bool>(false, false)), Struct_2(vec3<u32>(4294967295u, 0u, 1u), Struct_1(-580f, false, true, 1235f), vec2<i32>(-54524i, 1777i), vec2<f32>(-276f, -349f), vec2<bool>(true, true)), Struct_2(vec3<u32>(51843u, 5154u, 4294967295u), Struct_1(1193f, true, true, -606f), vec2<i32>(887i, 30893i), vec2<f32>(255f, -885f), vec2<bool>(true, false)), Struct_2(vec3<u32>(0u, 1654u, 10911u), Struct_1(-1243f, false, true, -524f), vec2<i32>(2147483647i, 2147483647i), vec2<f32>(1362f, 503f), vec2<bool>(true, true)), Struct_2(vec3<u32>(1u, 0u, 7410u), Struct_1(-204f, true, true, 738f), vec2<i32>(16551i, 0i), vec2<f32>(-916f, 835f), vec2<bool>(true, true)), Struct_2(vec3<u32>(0u, 4294967295u, 20182u), Struct_1(-604f, true, false, -1000f), vec2<i32>(-27735i, 0i), vec2<f32>(-433f, 439f), vec2<bool>(true, true)), Struct_2(vec3<u32>(51584u, 0u, 37749u), Struct_1(231f, false, true, -1759f), vec2<i32>(-26925i, 0i), vec2<f32>(224f, 771f), vec2<bool>(true, true)), Struct_2(vec3<u32>(84180u, 39000u, 4294967295u), Struct_1(-1896f, false, false, 893f), vec2<i32>(-39435i, -1i), vec2<f32>(-795f, 1012f), vec2<bool>(true, false)), Struct_2(vec3<u32>(1u, 66686u, 0u), Struct_1(-111f, false, true, 1733f), vec2<i32>(-32577i, 2147483647i), vec2<f32>(826f, 1238f), vec2<bool>(true, false)), Struct_2(vec3<u32>(0u, 0u, 93761u), Struct_1(432f, true, false, -855f), vec2<i32>(674i, -28483i), vec2<f32>(1303f, 339f), vec2<bool>(true, true)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 45144u), Struct_1(-2166f, false, false, -140f), vec2<i32>(24975i, 4831i), vec2<f32>(-135f, -921f), vec2<bool>(true, false)), Struct_2(vec3<u32>(45019u, 0u, 32867u), Struct_1(-146f, false, true, 803f), vec2<i32>(-64965i, -1i), vec2<f32>(1754f, -352f), vec2<bool>(true, true)), Struct_2(vec3<u32>(67897u, 16910u, 0u), Struct_1(851f, true, false, -392f), vec2<i32>(2147483647i, 1i), vec2<f32>(-1798f, -1000f), vec2<bool>(false, false)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = true;
    global2 = array<Struct_2, 17>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(103431u, 1u << (~arg_1.a.x % 32u), arg_0), 1u, countOneBits(0u)), 17u)];
    var var_2 = ~max(u_input.a.xwx, u_input.a.xxx);
    var var_3 = vec2<f32>(1306f, _wgslsmith_f_op_f32(min(-1875f, -201f)));
    return var_1.b;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = 1649f;
    global2 = array<Struct_2, 17>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~(~(~vec2<u32>(0u, 11107u))), min(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 1u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, 1905u), vec2<u32>(2458u, 1u), vec2<bool>(true, true)), vec2<u32>(1u, 1u))), true), ~(~vec2<u32>(~0u, select(4294967295u, 1u, true)))), 17u)];
    global1 = min(_wgslsmith_mod_vec3_i32(u_input.b.yxx, ~u_input.b.xzy), firstTrailingBit(u_input.a.xxz));
    let var_2 = global1.x;
    return Struct_1(389f, any(!select(global0[_wgslsmith_index_u32(24197u, 28u)], select(vec4<bool>(false, arg_0.c, false, arg_1), vec4<bool>(false, var_1.e.x, var_1.e.x, false), false), arg_0.b)), true, var_0);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(abs(829f));
    var var_1 = vec2<i32>(-(~2147483647i), u_input.b.x);
    var var_2 = arg_1;
    global1 = select(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(min(vec3<i32>(-39529i, global1.x, -44588i), vec3<i32>(global1.x, 10468i, 9425i) ^ vec3<i32>(arg_0.x, global1.x, 48116i)), u_input.b.xyz), min(u_input.b.xwy, vec3<i32>(5277i, -1i, u_input.a.x) >> (vec3<u32>(0u, 22389u, 4294967295u) % vec3<u32>(32u)))), -vec3<i32>(global1.x >> (~89755u % 32u), 6817i, 2147483647i), !(!select(select(vec3<bool>(arg_1.b, true, true), vec3<bool>(true, var_2.c, true), vec3<bool>(arg_1.c, arg_1.b, arg_1.b)), select(vec3<bool>(arg_1.b, false, arg_1.c), vec3<bool>(true, true, arg_1.c), vec3<bool>(var_2.c, true, true)), all(vec2<bool>(arg_1.c, false)))));
    global1 = u_input.b.zxx;
    return ~reverseBits(~vec2<u32>(1u, firstTrailingBit(6138u)));
}

fn func_1() -> StorageBuffer {
    global2 = array<Struct_2, 17>();
    global2 = array<Struct_2, 17>();
    var var_0 = ~(func_4(vec3<i32>(~u_input.b.x, global1.x << (4294967295u % 32u), global1.x), func_3(func_2(true, global2[_wgslsmith_index_u32(4294967295u, 17u)], Struct_1(-2685f, true, false, 415f), global1.x), true, -126f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1391f, -352f, 219f, -1000f))))) >> (min(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(58711u, 4294967295u))) % vec2<u32>(32u)));
    let var_1 = max(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(0u, var_0.x)), vec2<u32>(_wgslsmith_sub_u32(var_0.x, 0u), ~var_0.x)), firstLeadingBit(vec2<u32>(var_0.x, 56345u))), abs(~vec2<u32>(var_0.x, var_0.x)));
    global0 = array<vec4<bool>, 28>();
    return StorageBuffer(-_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, u_input.a.x, global1.x, 1i) ^ u_input.a, select(u_input.b, -u_input.a, vec4<bool>(false, true, false, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f * 1609f))), -506f), reverseBits(abs(vec3<u32>(var_1.x | var_0.x, 350u, abs(var_1.x)))), -1381f, reverseBits(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

