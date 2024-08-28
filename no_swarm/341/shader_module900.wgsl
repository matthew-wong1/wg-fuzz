struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(52064u, 43475u, 1u), 0u), Struct_1(vec3<u32>(69562u, 25356u, 27326u), 76104u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 5427u), 38200u), Struct_1(vec3<u32>(57159u, 51188u, 60834u), 4294967295u), Struct_1(vec3<u32>(57401u, 48553u, 916u), 516u), Struct_1(vec3<u32>(28821u, 4294967295u, 17961u), 7583u), Struct_1(vec3<u32>(39681u, 30142u, 59495u), 25922u), Struct_1(vec3<u32>(96523u, 32739u, 0u), 4294967295u), Struct_1(vec3<u32>(28296u, 70929u, 29313u), 1u), Struct_1(vec3<u32>(1307u, 31013u, 50875u), 0u), Struct_1(vec3<u32>(1u, 42560u, 11620u), 4294967295u), Struct_1(vec3<u32>(45916u, 15516u, 0u), 1281u), Struct_1(vec3<u32>(33716u, 36457u, 45379u), 4294967295u), Struct_1(vec3<u32>(22906u, 39744u, 0u), 0u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 86399u), 1u), Struct_1(vec3<u32>(4294967295u, 52881u, 0u), 522u), Struct_1(vec3<u32>(4429u, 1u, 4294967295u), 1u), Struct_1(vec3<u32>(29209u, 1u, 3222u), 1u), Struct_1(vec3<u32>(13449u, 41781u, 0u), 68865u), Struct_1(vec3<u32>(0u, 60159u, 93317u), 98466u), Struct_1(vec3<u32>(74076u, 1u, 0u), 9050u), Struct_1(vec3<u32>(46843u, 45712u, 0u), 76910u), Struct_1(vec3<u32>(44714u, 38700u, 34825u), 0u), Struct_1(vec3<u32>(38813u, 0u, 19283u), 2489u), Struct_1(vec3<u32>(0u, 1569u, 4294967295u), 4294967295u), Struct_1(vec3<u32>(1u, 22851u, 0u), 74987u), Struct_1(vec3<u32>(20639u, 63337u, 1u), 50438u), Struct_1(vec3<u32>(25756u, 4294967295u, 0u), 62567u));

var<private> global1: bool = true;

var<private> global2: vec2<i32> = vec2<i32>(4838i, 28305i);

var<private> global3: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(18385i, vec3<u32>(0u, 4294967295u, 13276u)), Struct_3(-1i, vec3<u32>(46515u, 4294967295u, 1u)));

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    global4 = array<Struct_1, 21>();
    global2 = u_input.a;
    let var_0 = Struct_2(-1i == _wgslsmith_clamp_i32(-2147483647i << (min(u_input.b.x, arg_0.c.b) % 32u), u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), arg_0.b, Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(1u << (1u % 32u), ~1u, u_input.b.x), countOneBits(~vec3<u32>(u_input.b.x, 0u, 5820u))), u_input.b.x), arg_0.c.a.xx);
    let var_1 = 1i;
    let var_2 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(min(4294967295u, var_0.c.b), 1u, _wgslsmith_div_u32(var_0.d.x, 4294967295u)), _wgslsmith_div_vec3_u32(select(vec3<u32>(var_0.d.x, var_0.d.x, arg_0.c.a.x), var_0.c.a, vec3<bool>(false, false, true)), _wgslsmith_sub_vec3_u32(arg_0.c.a, arg_0.c.a))), abs(var_0.c.a), vec3<u32>(0u, arg_0.c.b, max(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.a.x, u_input.b.x), vec2<u32>(66906u, 4294967295u))), ~_wgslsmith_mod_u32(u_input.b.x, 81443u))));
    return vec2<u32>(_wgslsmith_mod_u32(var_2.x, 17057u), ~4688u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_1 {
    global3 = array<Struct_3, 2>();
    global0 = array<Struct_1, 28>();
    global4 = array<Struct_1, 21>();
    var var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(func_3(Struct_2(true, true, Struct_1(vec3<u32>(0u, u_input.b.x, 24168u), 4041u), arg_1.a.xy)), reverseBits(arg_1.a.zy))), 2u)];
    var var_1 = global4[_wgslsmith_index_u32(58850u, 21u)];
    return global0[_wgslsmith_index_u32(max(firstTrailingBit(0u), _wgslsmith_mult_u32(u_input.b.x, 62267u)), 28u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> vec2<bool> {
    let var_0 = func_2(Struct_3(_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global2.x, 21921i, 14699i), vec4<i32>(40509i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, global2.x), global2.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), ~min(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 23789u)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), 28u)], false, 2755i);
    var var_1 = func_2(global3[_wgslsmith_index_u32(reverseBits(76302u & ((var_0.b | 4294967295u) ^ ~u_input.b.x)), 2u)], Struct_1(var_0.a, var_0.b), !all(select(arg_0, select(arg_0, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0), vec4<bool>(false, arg_0.x, true, arg_0.x))), u_input.a.x);
    global3 = array<Struct_3, 2>();
    global2 = u_input.a;
    global0 = array<Struct_1, 28>();
    return vec2<bool>(1u > u_input.b.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(!func_1(vec4<bool>(true, all(vec2<bool>(true, false)), false, false), any(vec2<bool>(false, true))));
    var var_0 = 556f;
    var var_1 = select(-vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(~u_input.a.x, ~0i, ~(-1i)), _wgslsmith_div_i32(~global2.x, -u_input.a.x)), vec3<i32>(~(global2.x | 0i), 59178i, -1i), !any(vec4<bool>(false, false, true, false)) | !(global2.x <= ~global2.x));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1492f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f * -227f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_div_f32(-304f, -756f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(min(-611f, _wgslsmith_f_op_f32(251f * 843f)))), 1f))));
    global0 = array<Struct_1, 28>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(255f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1473f)))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-773f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.b.x)), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) << (((_wgslsmith_sub_vec4_u32(vec4<u32>(39077u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)) | ~vec4<u32>(4294967295u, u_input.b.x, 45012u, 17450u)) << (vec4<u32>(firstLeadingBit(0u), 1u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~1u) % vec4<u32>(32u))) % vec4<u32>(32u)), 0u);
}

