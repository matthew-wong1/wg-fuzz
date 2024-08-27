struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 14213u;

var<private> global1: vec3<f32> = vec3<f32>(733f, -154f, -871f);

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec3<bool>(true, false, true), vec4<u32>(4294967295u, 5059u, 20208u, 48706u), vec3<u32>(4294967295u, 33619u, 5331u), Struct_2(vec2<i32>(-26267i, -100220i), Struct_1(55687u), i32(-2147483648), Struct_1(0u))), Struct_3(vec3<bool>(false, true, false), vec4<u32>(4294967295u, 15983u, 37038u, 4294967295u), vec3<u32>(0u, 48362u, 0u), Struct_2(vec2<i32>(4948i, -1i), Struct_1(4294967295u), 15799i, Struct_1(12048u))), Struct_3(vec3<bool>(true, true, true), vec4<u32>(1u, 9743u, 14642u, 1u), vec3<u32>(4294967295u, 0u, 0u), Struct_2(vec2<i32>(-25779i, 46085i), Struct_1(52920u), 33376i, Struct_1(1u))), Struct_3(vec3<bool>(true, true, false), vec4<u32>(1u, 14114u, 8647u, 18404u), vec3<u32>(4294967295u, 0u, 1u), Struct_2(vec2<i32>(i32(-2147483648), 1i), Struct_1(69928u), -61744i, Struct_1(0u))), Struct_3(vec3<bool>(false, true, true), vec4<u32>(0u, 4294967295u, 74152u, 0u), vec3<u32>(23999u, 4294967295u, 1u), Struct_2(vec2<i32>(38726i, 2147483647i), Struct_1(0u), 1i, Struct_1(75143u))), Struct_3(vec3<bool>(false, false, false), vec4<u32>(1u, 22244u, 39377u, 59736u), vec3<u32>(22815u, 20200u, 1u), Struct_2(vec2<i32>(12019i, 32148i), Struct_1(1u), 31373i, Struct_1(16546u))), Struct_3(vec3<bool>(true, false, false), vec4<u32>(109991u, 1u, 29057u, 108131u), vec3<u32>(4294967295u, 0u, 114464u), Struct_2(vec2<i32>(i32(-2147483648), -6343i), Struct_1(25216u), -1i, Struct_1(25306u))), Struct_3(vec3<bool>(false, false, false), vec4<u32>(44113u, 40299u, 3657u, 4294967295u), vec3<u32>(0u, 69278u, 68488u), Struct_2(vec2<i32>(i32(-2147483648), 26670i), Struct_1(0u), 28766i, Struct_1(36069u))), Struct_3(vec3<bool>(true, true, true), vec4<u32>(4294967295u, 50274u, 63112u, 4294967295u), vec3<u32>(4294967295u, 11315u, 39909u), Struct_2(vec2<i32>(1i, 3148i), Struct_1(4294967295u), -37116i, Struct_1(17173u))), Struct_3(vec3<bool>(true, true, true), vec4<u32>(19085u, 4294967295u, 25204u, 4294967295u), vec3<u32>(43349u, 51974u, 12161u), Struct_2(vec2<i32>(27750i, 11655i), Struct_1(1u), 45248i, Struct_1(5404u))), Struct_3(vec3<bool>(false, true, false), vec4<u32>(0u, 0u, 10324u, 3980u), vec3<u32>(56929u, 63709u, 4294967295u), Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(644u), 1i, Struct_1(76000u))), Struct_3(vec3<bool>(false, false, false), vec4<u32>(0u, 1u, 4294967295u, 0u), vec3<u32>(49874u, 0u, 4294967295u), Struct_2(vec2<i32>(5401i, -65683i), Struct_1(4294967295u), 37307i, Struct_1(1u))), Struct_3(vec3<bool>(true, false, false), vec4<u32>(102489u, 89632u, 116489u, 83175u), vec3<u32>(26684u, 0u, 91483u), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(70012u), 4551i, Struct_1(1u))), Struct_3(vec3<bool>(false, false, false), vec4<u32>(1u, 11124u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 49368u), Struct_2(vec2<i32>(-46911i, -1i), Struct_1(1u), 3992i, Struct_1(48936u))), Struct_3(vec3<bool>(false, false, false), vec4<u32>(11049u, 16963u, 65724u, 29586u), vec3<u32>(23058u, 1u, 4294967295u), Struct_2(vec2<i32>(-12217i, 0i), Struct_1(0u), 31013i, Struct_1(1u))), Struct_3(vec3<bool>(false, true, false), vec4<u32>(22983u, 87798u, 0u, 66841u), vec3<u32>(1u, 4294967295u, 4294967295u), Struct_2(vec2<i32>(0i, 17761i), Struct_1(96874u), 2147483647i, Struct_1(1u))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    global2 = array<Struct_3, 16>();
    let var_0 = -_wgslsmith_clamp_i32(~(~min(-2147483647i, 0i)), -37528i, _wgslsmith_add_i32(_wgslsmith_div_i32(i32(-1i) * -32951i, 1i), i32(-1i) * -1i));
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, var_1.c.x)), var_1.c.yz) << (vec2<u32>(4294967295u, ~_wgslsmith_mod_u32(var_1.c.x, var_1.c.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(104f, global1.x, global1.x, global1.x), vec4<bool>(var_1.a.x, var_1.a.x, true, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 247f, -876f, 1000f) - vec4<f32>(global1.x, -247f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1045f, global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -1000f, global1.x) + vec4<f32>(global1.x, -1217f, global1.x, 674f))), !(!vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-710f, global1.x, -380f, global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-617f, 649f, global1.x, global1.x))))))), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1i, var_0, 2147483647i, var_1.d.c), vec4<i32>(var_0, 2147483647i, _wgslsmith_dot_vec2_i32(var_1.d.a, vec2<i32>(9370i, var_1.d.a.x)), var_1.d.a.x)));
}

