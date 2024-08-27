struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(535f, 1000f, 1238f, 368f), vec4<f32>(-1127f, 1219f, 2072f, 1733f), vec4<f32>(100f, 1094f, -526f, -140f), vec4<f32>(1616f, -1000f, 529f, 970f), vec4<f32>(1781f, 935f, -583f, 697f));

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(49486u, 4294967295u), vec2<u32>(1u, 36336u), vec2<u32>(0u, 48160u), vec2<u32>(13112u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 83157u), vec2<u32>(1u, 0u), vec2<u32>(71484u, 1u), vec2<u32>(13958u, 36792u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(21296u, 22900u), vec2<u32>(0u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = firstTrailingBit(0u);
    global2 = array<vec2<u32>, 13>();
    global1 = array<Struct_2, 19>();
    var var_1 = select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), -913f > _wgslsmith_f_op_f32(floor(642f)))), true);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -165f);
    return firstTrailingBit(0i);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_4(4294967295u, Struct_2(_wgslsmith_mult_i32(~arg_0.a, -2147483647i & arg_0.a) >> (firstTrailingBit(0u) % 32u), -843f), ~arg_0.a);
    var_0 = func_3();
    var var_2 = _wgslsmith_f_op_f32(-arg_0.b);
    var_1 = Struct_4(28711u, Struct_2(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-26197i, 1i, var_1.b.a), -u_input.c, var_1.c), 788f), i32(-1i) * -(~(~var_1.c)));
    return arg_0;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(~_wgslsmith_mod_u32(17945u, 4985u), min(~u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x))), _wgslsmith_add_u32(31261u, _wgslsmith_mod_u32(28001u, u_input.d.x)) & ~min(27248u, 1u)), 19u)]);
    global1 = array<Struct_2, 19>();
    let var_1 = vec2<bool>(!(all(vec3<bool>(true, false, false)) & all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), 105f) == _wgslsmith_f_op_f32(1646f - 1f));
    let var_2 = abs(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(-1i, var_0.a << (1u % 32u)), u_input.b.x, -57999i)));
    global0 = array<vec4<f32>, 5>();
    return StorageBuffer(_wgslsmith_f_op_f32(var_0.b + -2168f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 5>();
    global2 = array<vec2<u32>, 13>();
    var var_0 = Struct_4(~(~71228u), Struct_2(~_wgslsmith_add_i32(u_input.c << (u_input.d.x % 32u), _wgslsmith_mod_i32(-41710i, u_input.c)), -824f), ~_wgslsmith_dot_vec2_i32(u_input.b.yw, vec2<i32>(u_input.b.x, u_input.a.x)) | u_input.a.x);
    var_0 = Struct_4(4181u, var_0.b, -(3575i << (u_input.d.x % 32u)));
    let var_1 = 159f;
    let var_2 = u_input.d.x;
    let x = u_input.a;
    s_output = func_1();
}

