struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<u32>(1u, 42971u, 4294967295u, 48707u), 437f, vec2<f32>(-1000f, 1834f), Struct_1(-503f)), Struct_2(vec4<u32>(1u, 51332u, 0u, 4001u), -1162f, vec2<f32>(360f, 441f), Struct_1(-837f)), Struct_2(vec4<u32>(0u, 0u, 0u, 26189u), 305f, vec2<f32>(-1828f, -694f), Struct_1(1000f)), Struct_2(vec4<u32>(4294967295u, 133114u, 44041u, 77531u), -550f, vec2<f32>(-622f, -1360f), Struct_1(142f)));

var<private> global1: u32 = 1u;

var<private> global2: array<u32, 17>;

var<private> global3: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(i32(-2147483648)), Struct_3(-1i), Struct_3(13280i), Struct_3(2946i));

var<private> global4: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(22318i), Struct_3(-13451i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> i32 {
    var var_0 = firstLeadingBit(u_input.e.x);
    global3 = array<Struct_3, 4>();
    global4 = array<Struct_3, 2>();
    var var_1 = ~(abs(u_input.d ^ ~u_input.d) << (u_input.e % vec2<u32>(32u)));
    var var_2 = 36546i;
    return arg_1.a;
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = array<Struct_2, 4>();
    var var_0 = arg_0.c;
    global0 = array<Struct_2, 4>();
    let var_1 = Struct_3(-2147483647i);
    let var_2 = vec3<i32>(-12500i, func_3(Struct_3(~reverseBits(var_1.a)), Struct_3(0i), false), 0i);
    return !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)));
}

fn func_1() -> vec4<bool> {
    var var_0 = 1i;
    let var_1 = select(vec2<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec2<bool>(func_2(Struct_2(vec4<u32>(36048u, global2[_wgslsmith_index_u32(u_input.e.x, 17u)], 5859u, u_input.e.x), _wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -240f) - vec2<f32>(504f, 446f)), Struct_1(306f))), false), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), ~4917i <= u_input.c));
    var var_2 = reverseBits(~(_wgslsmith_mult_vec4_u32(vec4<u32>(52084u, 16652u, 1u, 4294967295u) & vec4<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 17u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 17u)], 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(27773u, 4294967295u, u_input.b, global2[_wgslsmith_index_u32(0u, 17u)]), vec4<u32>(54450u, u_input.b, 4294967295u, 55355u))) & ~_wgslsmith_add_vec4_u32(vec4<u32>(44777u, u_input.b, u_input.e.x, 1u), vec4<u32>(0u, u_input.b, 899u, u_input.b))));
    let var_3 = select(vec3<bool>(var_1.x, var_1.x, u_input.c != -17005i), !(!select(!vec3<bool>(var_1.x, false, var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, false), var_1.x), !vec3<bool>(true, var_1.x, var_1.x))), vec3<bool>(false, !var_1.x, !all(var_1)));
    global4 = array<Struct_3, 2>();
    return vec4<bool>(false, all(!select(!var_3.yz, vec2<bool>(var_3.x, false), all(vec3<bool>(var_3.x, false, false)))), any(!select(select(vec4<bool>(var_3.x, var_3.x, false, true), vec4<bool>(var_3.x, var_1.x, false, false), true), !vec4<bool>(var_1.x, false, var_1.x, false), !vec4<bool>(true, false, var_1.x, var_1.x))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!any(!func_1()));
    var var_1 = ~vec3<u32>(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~(~u_input.b), 17u)], _wgslsmith_sub_u32(~16442u, global2[_wgslsmith_index_u32(1u, 17u)] & 1562u)), ~global2[_wgslsmith_index_u32(u_input.b, 17u)], firstLeadingBit((u_input.e.x >> (global2[_wgslsmith_index_u32(16773u, 17u)] % 32u)) >> (4992u % 32u)));
    var var_2 = false;
    let var_3 = Struct_2(vec4<u32>(10253u, _wgslsmith_sub_u32(min(43357u, u_input.b) ^ 1u, 4294967295u), 3790u, _wgslsmith_add_u32(~1u, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -1385f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(select(1036f, 492f, false)), _wgslsmith_div_f32(-205f, 1343f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2200f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-498f))))));
    let var_4 = !vec4<bool>(any(vec2<bool>(var_3.a.x == var_1.x, true)), func_1().x, var_0, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(3054u, 30132u), ~abs(reverseBits(vec3<i32>(-2019i, 2147483647i, 2147483647i))), max(((vec4<i32>(3956i, u_input.c, -6995i, -16714i) ^ vec4<i32>(u_input.d.x, 16609i, 13032i, 35687i)) | select(vec4<i32>(u_input.d.x, -1i, -13122i, u_input.a), vec4<i32>(-1i, u_input.a, 0i, u_input.c), var_0)) & countOneBits(vec4<i32>(1i, -2147483647i, u_input.c, 1i)), _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(-1i, u_input.c, 24444i, 57831i)), ~vec4<i32>(-2147483647i, u_input.a, 2147483647i, 40097i))));
}

