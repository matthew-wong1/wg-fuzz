struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<f32>(-471f, -1433f, 215f), vec3<bool>(false, false, false), vec2<i32>(2147483647i, 2147483647i), 49943u, 9162i), Struct_1(vec3<f32>(454f, 1000f, -129f), vec3<bool>(false, false, true), vec2<i32>(2147483647i, -22683i), 8272u, 2147483647i), Struct_1(vec3<f32>(-393f, -870f, -2752f), vec3<bool>(true, false, true), vec2<i32>(2152i, 63268i), 0u, -1i), Struct_1(vec3<f32>(-1000f, 790f, -773f), vec3<bool>(true, false, false), vec2<i32>(1i, 2147483647i), 1u, 1i), Struct_1(vec3<f32>(1743f, 622f, -1128f), vec3<bool>(false, true, false), vec2<i32>(-13030i, -1i), 0u, 2147483647i), Struct_1(vec3<f32>(254f, 569f, -1027f), vec3<bool>(false, true, false), vec2<i32>(-9711i, 2147483647i), 0u, 15278i), Struct_1(vec3<f32>(-1231f, -1006f, -131f), vec3<bool>(false, false, true), vec2<i32>(2147483647i, i32(-2147483648)), 4294967295u, 12217i), Struct_1(vec3<f32>(-165f, 163f, -592f), vec3<bool>(true, true, false), vec2<i32>(1i, 2147483647i), 57938u, 68127i), Struct_1(vec3<f32>(1731f, 599f, 513f), vec3<bool>(true, true, true), vec2<i32>(63937i, 2147483647i), 78312u, -727i), Struct_1(vec3<f32>(-264f, 1105f, 1000f), vec3<bool>(false, false, false), vec2<i32>(-56796i, 1i), 39058u, -26354i), Struct_1(vec3<f32>(-1458f, 1717f, -694f), vec3<bool>(false, true, false), vec2<i32>(24582i, -1i), 0u, i32(-2147483648)), Struct_1(vec3<f32>(417f, -141f, -1000f), vec3<bool>(false, true, false), vec2<i32>(9863i, 74517i), 16201u, 3776i), Struct_1(vec3<f32>(-688f, -444f, -352f), vec3<bool>(false, false, false), vec2<i32>(0i, 0i), 21168u, -43045i), Struct_1(vec3<f32>(-1715f, -335f, -954f), vec3<bool>(true, true, false), vec2<i32>(-1i, -31824i), 1u, 57940i), Struct_1(vec3<f32>(-1000f, -617f, -199f), vec3<bool>(false, false, true), vec2<i32>(0i, 1i), 1u, -1i), Struct_1(vec3<f32>(-1673f, 1065f, -982f), vec3<bool>(true, false, true), vec2<i32>(22227i, 4451i), 1u, -9685i), Struct_1(vec3<f32>(779f, 687f, 1000f), vec3<bool>(true, true, true), vec2<i32>(2147483647i, 0i), 4294967295u, 19524i));

var<private> global2: array<vec2<bool>, 19>;

var<private> global3: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = arg_0.d;
    var var_0 = vec2<bool>(true, true);
    let var_1 = 404f;
    global1 = array<Struct_1, 17>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.a))), arg_0.b, vec2<i32>(-1i) * -countOneBits(arg_0.c), firstTrailingBit(reverseBits(_wgslsmith_mod_u32(arg_0.d, ~u_input.a.x))), arg_0.c.x);
    return ~(_wgslsmith_clamp_i32(firstLeadingBit(arg_0.e), 0i, arg_0.c.x) >> (34393u % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, func_3(global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), 1i, 1i), ~(~vec4<i32>(-1i, -2010i, -5311i, -1i))), min(vec4<i32>(~(-60574i), 1i, -29831i, 1i), _wgslsmith_div_vec4_i32(select(vec4<i32>(29408i, -1i, -1i, 1i), vec4<i32>(2147483647i, -24603i, -25907i, -21823i), vec4<bool>(true, true, false, false)), _wgslsmith_add_vec4_i32(vec4<i32>(-40234i, 0i, 17418i, -2147483647i), vec4<i32>(-7755i, -42104i, -13305i, 2147483647i))))) > -2147483647i;
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 17u)];
    var var_2 = vec2<i32>(countOneBits(20189i), 34821i);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.a))))), vec3<bool>(false, false, true), vec2<i32>(-var_1.c.x, i32(-1i) * -262i), 4294967295u, -var_1.c.x);
    var var_3 = _wgslsmith_sub_i32(var_2.x, ~(-20441i));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.a, var_1.a))), vec3<bool>(!(var_1.b.x && true), !var_1.b.x, var_1.b.x), _wgslsmith_mod_vec2_i32(var_1.c, vec2<i32>(-2147483647i, max(var_1.c.x & var_2.x, _wgslsmith_add_i32(-35724i, var_2.x)))), 0u, abs(-_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-7910i, var_1.c.x, var_2.x)), countOneBits(vec3<i32>(var_1.c.x, var_2.x, var_2.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_0.a.x, -1951f) - arg_0.a)))))), vec3<bool>(true, true, arg_0.b.x), arg_0.c, arg_0.d, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i | ~arg_3.e, _wgslsmith_mod_i32(-10683i, ~arg_0.c.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(46534i, -33652i, arg_0.e), vec3<i32>(0i, arg_3.e, -1i)), abs(vec3<i32>(-26885i, 43267i, -15991i))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(arg_3.e, 32494i, -1i), vec3<i32>(arg_3.e, -4243i, arg_0.c.x), arg_3.b), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.e, 7217i, arg_3.e), vec3<i32>(arg_0.c.x, 0i, 82063i))))));
    var var_1 = vec2<u32>(countOneBits(_wgslsmith_mult_u32(firstLeadingBit(22669u), u_input.a.x)) << (arg_0.d % 32u), _wgslsmith_mod_u32(~max(33817u, ~0u), _wgslsmith_sub_u32(4294967295u >> (u_input.a.x % 32u), 0u) | 0u));
    var var_2 = arg_0;
    var var_3 = arg_0.b.zy;
    let var_4 = !select(false, all(func_2().b.xy), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(var_2.b.x, arg_0.b.x, false, var_2.b.x), arg_0.b.x)));
    return vec3<i32>(~(~(-71328i)), var_0.c.x, -21378i);
}

fn func_1() -> vec2<i32> {
    var var_0 = ~vec3<i32>(-1060i, abs(1i), 12385i) & select(-func_4(func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1824f, 339f, -1988f, 318f)), func_2().b.x, global1[_wgslsmith_index_u32(~u_input.a.x, 17u)]), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(1i, 2147483647i, 2147483647i)), vec3<i32>(1i, 1i, 1i) ^ (vec3<i32>(1i, 1i, 29066i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)))), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))));
    let var_1 = global1[_wgslsmith_index_u32(min(u_input.a.x, ~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(13419u, 1u), u_input.a.x)), 17u)];
    var var_2 = var_1.a;
    var var_3 = func_2();
    return -abs(-firstLeadingBit(var_1.c >> (vec2<u32>(0u, var_3.d) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 19>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2012f)) + 198f), 563f, _wgslsmith_f_op_f32(-756f * _wgslsmith_f_op_f32(f32(-1f) * -1155f))), vec3<bool>(true, false, true), select(vec2<i32>(1i, -1i), func_1(), select(func_2().b.zz, vec2<bool>(true, true), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 20372u) >> (~u_input.a.x % 32u), 19u)])), firstLeadingBit(_wgslsmith_dot_vec3_u32(~u_input.a.wyx, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (u_input.a.wyy % vec3<u32>(32u)))) | u_input.a.x, -_wgslsmith_mult_i32(~0i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(1i, -1482i, -2147483647i), 4294967295u, ~(~countOneBits(var_0.d >> (6944u % 32u))));
}

