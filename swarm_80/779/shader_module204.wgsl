struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(41264u, 24233u, 28784u, 28400u, 1u, 997u, 18737u, 4294967295u, 0u, 0u, 54785u, 62561u, 1u, 9059u, 0u, 5873u, 4294967295u, 40929u, 0u, 581u, 0u, 0u, 14361u);

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(-34327i, -34783i, -66775i), vec3<i32>(-14336i, -1i, 34503i), vec3<i32>(-1119i, -1i, -84200i), vec3<i32>(1i, -50881i, -20419i), vec3<i32>(10844i, 12163i, i32(-2147483648)), vec3<i32>(-37403i, -4161i, 2147483647i), vec3<i32>(24875i, 1i, 1i), vec3<i32>(-33286i, -34760i, -48970i), vec3<i32>(0i, i32(-2147483648), 34264i), vec3<i32>(i32(-2147483648), 37081i, -1i), vec3<i32>(2147483647i, 15847i, -1i), vec3<i32>(-10374i, 54245i, -25066i), vec3<i32>(2147483647i, 1i, -386i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(3340i, -5637i, -19087i), vec3<i32>(45587i, 66467i, 7538i), vec3<i32>(-28176i, -50087i, 54004i), vec3<i32>(-11720i, 5141i, 7535i), vec3<i32>(-58382i, 0i, 42790i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(16572i, -1i, 4657i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(-1i, 17540i, 0i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(1i, -37608i, i32(-2147483648)), vec3<i32>(-18198i, -19862i, 23846i), vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(-12682i, 1i, -13895i), vec3<i32>(5784i, -6496i, 0i));

var<private> global3: array<vec3<u32>, 30>;

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool) -> bool {
    global3 = array<vec3<u32>, 30>();
    var var_0 = vec3<f32>(-907f, _wgslsmith_f_op_f32(-1f), -574f);
    var var_1 = arg_1;
    let var_2 = arg_1;
    var_1 = arg_1;
    return !all(!vec2<bool>(true, arg_2));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = !arg_0;
    let var_1 = Struct_1(select(global2[_wgslsmith_index_u32(countOneBits(~1u), 31u)] >> (global3[_wgslsmith_index_u32(max(_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(5808u, 23u)]), _wgslsmith_sub_u32(arg_2.b, 4294967295u)), 30u)] % vec3<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(1u, u_input.b, any(vec4<bool>(arg_0.x, var_0.x, arg_0.x, arg_0.x))), 1u), 31u)], arg_0));
    let var_2 = Struct_2(40158i, 23812u);
    let var_3 = select(vec3<bool>(false, all(arg_0), var_0.x), select(vec3<bool>(func_2(firstLeadingBit(vec4<u32>(1u, global0[_wgslsmith_index_u32(15834u, 23u)], 0u, var_2.b)), arg_2, arg_0.x), select(all(vec4<bool>(false, true, arg_0.x, var_0.x)), any(arg_0), all(vec2<bool>(true, false))), select(true, !var_0.x, all(arg_0.xx))), select(!arg_0, !vec3<bool>(var_0.x, arg_0.x, var_0.x), vec3<bool>(arg_0.x, true, all(vec3<bool>(var_0.x, true, true)))), arg_0), vec3<bool>(arg_0.x, var_0.x, false));
    var var_4 = select(-_wgslsmith_mod_vec3_i32(var_1.a, ~var_1.a), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-4226i, arg_2.a, 1i), vec3<i32>(56395i, arg_2.a, -2147483647i)), var_1.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, 28385i, var_1.a.x), ~u_input.a.zyy, -global2[_wgslsmith_index_u32(var_2.b, 31u)])), arg_0.x & true) ^ u_input.a.xyw;
    return global3[_wgslsmith_index_u32(max(1u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, var_2.b, 4294967295u)), vec3<u32>(1u, 1u, var_2.b) << (global3[_wgslsmith_index_u32(arg_2.b, 30u)] % vec3<u32>(32u))) & (select(arg_2.b, 1u, arg_0.x) >> (abs(0u) % 32u))) & _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 23u)], u_input.c.x), 30u)];
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = func_3(vec3<bool>(!func_2(vec4<u32>(19122u, 16547u, arg_0.b, global4.b), arg_0, true) & all(vec2<bool>(true, true)), all(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), true, true)), false), 0i, arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 252f, -556f, arg_1) - vec4<f32>(arg_1, arg_1, arg_1, arg_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(907f, arg_1, arg_1, 2211f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 3439f, arg_1) - vec4<f32>(-1618f, arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(336f, arg_1, -2145f, arg_1)))))))) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(min(106f, _wgslsmith_f_op_f32(arg_1 - arg_1))))), arg_1, _wgslsmith_f_op_f32(-arg_1)));
    global0 = array<u32, 23>();
    let var_2 = vec3<bool>(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)))), all(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(-arg_1) >= arg_1);
    var var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 21u)];
    return var_2.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ((global4.b << (_wgslsmith_add_u32(~u_input.c.x, ~4294967295u) % 32u)) & 1u) ^ global4.b;
    let var_1 = Struct_2(global4.a, ~_wgslsmith_sub_u32(~global4.b, ~_wgslsmith_add_u32(4294967295u, u_input.c.x)));
    let var_2 = global1[_wgslsmith_index_u32(global4.b, 21u)];
    global1 = array<Struct_1, 21>();
    return Struct_2(arg_1.x, ~(~(~func_3(vec3<bool>(arg_0.x, true, arg_0.x), 19652i, Struct_2(arg_1.x, global4.b)).x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!(!vec2<bool>(func_1(Struct_2(-1i, 0u), -1370f), true)), ~vec2<i32>(select(max(u_input.a.x, global4.a), u_input.a.x, global4.a < global4.a), -global4.a), global2[_wgslsmith_index_u32(~abs(~(~u_input.c.x)), 31u)], global1[_wgslsmith_index_u32(min(88075u, reverseBits(17448u)), 21u)]);
    global2 = array<vec3<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 57708u, global4.b, 60057u), vec4<u32>(u_input.c.x, 110139u, 13248u, 0u), vec4<u32>(1u, 5048u, u_input.b, 0u))), vec4<u32>(abs(48437u), ~global4.b, 36370u, _wgslsmith_mod_u32(global4.b, u_input.b) >> (48089u % 32u))), func_4(vec2<bool>(true, global4.a > 1i), vec2<i32>(-var_0.a | 0i, abs(-16816i)), _wgslsmith_clamp_vec3_i32(abs(u_input.a.xzy), vec3<i32>(global4.a, var_0.a, global4.a), ~global2[_wgslsmith_index_u32(global4.b, 31u)]) ^ vec3<i32>(global4.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-28492i, var_0.a), u_input.a.zy), _wgslsmith_add_i32(2147483647i, u_input.a.x)), Struct_1(select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b, 19326u, var_0.b), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(29294u, 23u)], 1u, 9068u)), 31u)], vec3<i32>(26011i, 2147483647i, var_0.a), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))))).a);
}

