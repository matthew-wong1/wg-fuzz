struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(1i, 0i, 0i), vec4<bool>(true, true, false, false));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<i32>(5087i, 2147483647i, 29056i), vec4<bool>(false, true, true, true)), Struct_1(vec3<i32>(42711i, 12587i, i32(-2147483648)), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i), vec4<bool>(false, false, true, true)), Struct_1(vec3<i32>(0i, 7678i, -13910i), vec4<bool>(false, true, true, false)), Struct_1(vec3<i32>(2147483647i, -625i, 8922i), vec4<bool>(true, true, false, true)), Struct_1(vec3<i32>(2147483647i, -1i, -36442i), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(2952i, 1335i, -21877i), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(1i, 9555i, 36030i), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -7908i), vec4<bool>(false, false, true, true)), Struct_1(vec3<i32>(2147483647i, -1099i, -58204i), vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(2147483647i, 18109i, -1i), vec4<bool>(false, true, true, false)), Struct_1(vec3<i32>(-25397i, 22774i, 26401i), vec4<bool>(false, false, true, false)), Struct_1(vec3<i32>(-1i, 1i, -5260i), vec4<bool>(true, true, false, false)));

var<private> global2: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-11918i, 57005i, i32(-2147483648), -38583i), vec4<i32>(0i, -1i, 2147483647i, -43723i), vec4<i32>(2147483647i, -37632i, 17188i, -22962i), vec4<i32>(i32(-2147483648), -36159i, 35718i, 27272i), vec4<i32>(25013i, -943i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -41401i, i32(-2147483648)), vec4<i32>(-1i, -1i, 0i, i32(-2147483648)), vec4<i32>(33044i, 0i, -18271i, -3727i), vec4<i32>(1i, 36823i, 71389i, -65155i), vec4<i32>(7626i, 27354i, 18957i, -1594i), vec4<i32>(-1i, -1i, -1i, 47585i), vec4<i32>(i32(-2147483648), -36413i, 18338i, 1i), vec4<i32>(7035i, -1i, 1i, -74061i), vec4<i32>(2147483647i, 2147483647i, -26176i, i32(-2147483648)), vec4<i32>(-17229i, 22521i, -23203i, 51092i), vec4<i32>(55391i, i32(-2147483648), i32(-2147483648), -19451i), vec4<i32>(1i, -1i, 0i, 18123i), vec4<i32>(7230i, 24771i, 5980i, -47859i), vec4<i32>(19636i, 1i, -16975i, 0i), vec4<i32>(-1i, 1i, 2147483647i, -2441i), vec4<i32>(-55794i, -1i, -27061i, 1i));

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<i32>(1i, 0i, 0i), vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(-7215i, 2147483647i, 1i), vec4<bool>(true, true, false, true)), Struct_1(vec3<i32>(-1i, -22359i, -1i), vec4<bool>(true, true, false, false)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 1i), vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(-30222i, i32(-2147483648), -30565i), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(-1i, -36820i, 2147483647i), vec4<bool>(true, true, false, true)), Struct_1(vec3<i32>(-13270i, -26632i, i32(-2147483648)), vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(-1i, 1i, 1i), vec4<bool>(true, true, false, false)), Struct_1(vec3<i32>(-1i, -1i, -21123i), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(-13670i, 1i, 2147483647i), vec4<bool>(false, true, true, true)), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(-1893i, 19781i, 1i), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(3451i, 1i, -44682i), vec4<bool>(false, false, false, true)), Struct_1(vec3<i32>(-1i, 2598i, -13954i), vec4<bool>(true, true, false, false)), Struct_1(vec3<i32>(-3519i, 43348i, -1i), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(2147483647i, -1i, -32671i), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(67354i, i32(-2147483648), 2147483647i), vec4<bool>(true, false, false, true)), Struct_1(vec3<i32>(-1i, -43299i, 1i), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(i32(-2147483648), -2778i, -7445i), vec4<bool>(false, false, true, true)), Struct_1(vec3<i32>(-10976i, 8665i, 3693i), vec4<bool>(false, true, true, false)), Struct_1(vec3<i32>(13030i, 43684i, 24360i), vec4<bool>(false, false, false, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    return _wgslsmith_div_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 76636u, u_input.c), vec3<u32>(45744u, 1u, u_input.c)) & vec3<u32>(u_input.a, firstLeadingBit(u_input.a), ~u_input.c)) >> (vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 68800u), vec2<u32>(u_input.a, 0u)), u_input.a, _wgslsmith_div_u32(~u_input.c, 1u)) % vec3<u32>(32u)), vec3<u32>(u_input.c, countOneBits(_wgslsmith_mult_u32(u_input.a, u_input.c)) >> (u_input.c % 32u), _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.a, u_input.a, u_input.c)), vec3<u32>(select(3550u, 68627u, global0.b.x), 5885u, ~9022u))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = global0.b.x && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f))))) > _wgslsmith_f_op_f32(abs(620f)));
    var var_1 = Struct_1(vec3<i32>(abs(~(~(-2147483647i))), -2147483647i, arg_2.a.x), select(select(select(vec4<bool>(true, true, true, true), select(arg_0.b, global0.b, arg_1.b.x), !arg_1.b.x), global0.b, !arg_2.b), !(!arg_1.b), arg_0.b.x));
    global2 = array<vec4<i32>, 21>();
    var var_2 = -1i;
    var var_3 = select(global0.a, ~(~(~vec3<i32>(-1i, 1i, 2147483647i) >> ((vec3<u32>(u_input.a, arg_3, 6239u) << (vec3<u32>(u_input.a, arg_3, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)))), true != arg_1.b.x);
    return _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~59843u, u_input.a), ~52017u, ~arg_3);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    global1 = array<Struct_1, 13>();
    global3 = array<Struct_1, 21>();
    global0 = arg_2;
    var var_0 = Struct_1(arg_3.a, arg_2.b);
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(func_3(Struct_1(arg_2.a, global0.b), Struct_1(vec3<i32>(19460i, 26114i, arg_3.a.x), vec4<bool>(arg_2.b.x, false, arg_3.b.x, arg_3.b.x)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(2004u, 0u)), 21u)], 0u), max(~_wgslsmith_sub_u32(6467u, u_input.c), ~(~u_input.c))), 64666u), 21u)];
    return StorageBuffer(u_input.a, abs(~arg_0.a.x), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.a, u_input.c, 0u), ~vec4<u32>(41854u, 1u, u_input.c, 1u)) | ~(_wgslsmith_add_vec4_u32(vec4<u32>(3474u, u_input.a, 4294967295u, u_input.c), vec4<u32>(1u, u_input.c, u_input.c, 4294967295u)) >> (~vec4<u32>(u_input.c, 1872u, 5252u, 40319u) % vec4<u32>(32u))), -1i, vec4<f32>(-496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-280f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1418f))))), 545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-397f * -892f) + -438f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.c), ~u_input.c, ~u_input.c) ^ ~vec3<u32>(u_input.a, u_input.a, 23739u), ~func_1(false, Struct_1(vec3<i32>(52986i, 2147483647i, 1i), vec4<bool>(true, global0.b.x, true, false)))), 21u)], global0.b, Struct_1(vec3<i32>(0i, firstTrailingBit(19453i) << (1u % 32u), -2147483647i), select(vec4<bool>(global0.a.x >= global0.a.x, true, true, true), !vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x), !select(vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), global0.b, false))), Struct_1(global0.a, global0.b));
}

