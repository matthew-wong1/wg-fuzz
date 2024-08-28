struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_1(vec3<u32>(65359u, 61554u, 43018u)), vec4<bool>(false, true, true, true), Struct_2(Struct_1(vec3<u32>(28075u, 0u, 85180u)))), Struct_3(Struct_1(vec3<u32>(31300u, 18647u, 9323u)), vec4<bool>(false, true, true, false), Struct_2(Struct_1(vec3<u32>(23389u, 1u, 1u)))), Struct_3(Struct_1(vec3<u32>(4294967295u, 45926u, 1u)), vec4<bool>(false, false, false, false), Struct_2(Struct_1(vec3<u32>(4294967295u, 59524u, 0u)))), Struct_3(Struct_1(vec3<u32>(17346u, 4294967295u, 87398u)), vec4<bool>(false, false, true, true), Struct_2(Struct_1(vec3<u32>(19111u, 4294967295u, 4294967295u)))), Struct_3(Struct_1(vec3<u32>(53112u, 57437u, 1u)), vec4<bool>(true, true, true, false), Struct_2(Struct_1(vec3<u32>(0u, 15978u, 0u)))), Struct_3(Struct_1(vec3<u32>(1u, 1u, 41433u)), vec4<bool>(false, true, false, false), Struct_2(Struct_1(vec3<u32>(31565u, 4294967295u, 4294967295u)))), Struct_3(Struct_1(vec3<u32>(19518u, 25403u, 52780u)), vec4<bool>(true, false, true, true), Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u)))), Struct_3(Struct_1(vec3<u32>(4294967295u, 68063u, 31296u)), vec4<bool>(false, true, true, true), Struct_2(Struct_1(vec3<u32>(33574u, 15708u, 14452u)))), Struct_3(Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u)), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec3<u32>(19979u, 1u, 22181u)))), Struct_3(Struct_1(vec3<u32>(89227u, 2427u, 4294967295u)), vec4<bool>(true, true, false, false), Struct_2(Struct_1(vec3<u32>(1u, 1u, 1u)))), Struct_3(Struct_1(vec3<u32>(44613u, 23428u, 7548u)), vec4<bool>(false, false, false, true), Struct_2(Struct_1(vec3<u32>(38776u, 10739u, 0u)))), Struct_3(Struct_1(vec3<u32>(1u, 24564u, 4294967295u)), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 0u)))), Struct_3(Struct_1(vec3<u32>(4294967295u, 23027u, 0u)), vec4<bool>(false, true, true, true), Struct_2(Struct_1(vec3<u32>(8640u, 58401u, 30147u)))), Struct_3(Struct_1(vec3<u32>(22617u, 128004u, 1u)), vec4<bool>(true, false, true, true), Struct_2(Struct_1(vec3<u32>(1u, 1u, 23685u)))), Struct_3(Struct_1(vec3<u32>(46990u, 90839u, 1u)), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec3<u32>(68053u, 4294967295u, 1u)))), Struct_3(Struct_1(vec3<u32>(54988u, 46132u, 50172u)), vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec3<u32>(4294967295u, 17030u, 4294967295u)))), Struct_3(Struct_1(vec3<u32>(1u, 25766u, 69106u)), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec3<u32>(39435u, 0u, 4294967295u)))), Struct_3(Struct_1(vec3<u32>(0u, 16094u, 28926u)), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec3<u32>(1u, 0u, 4294967295u)))), Struct_3(Struct_1(vec3<u32>(20332u, 36705u, 1u)), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec3<u32>(41791u, 25780u, 0u)))), Struct_3(Struct_1(vec3<u32>(28096u, 77784u, 1u)), vec4<bool>(false, false, false, true), Struct_2(Struct_1(vec3<u32>(0u, 0u, 1u)))), Struct_3(Struct_1(vec3<u32>(0u, 36505u, 64603u)), vec4<bool>(false, false, false, false), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 13561u)))), Struct_3(Struct_1(vec3<u32>(35340u, 9811u, 50775u)), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec3<u32>(139184u, 0u, 17021u)))), Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec4<bool>(true, true, true, false), Struct_2(Struct_1(vec3<u32>(1u, 24922u, 47308u)))), Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec4<bool>(false, false, true, false), Struct_2(Struct_1(vec3<u32>(9614u, 0u, 1u)))), Struct_3(Struct_1(vec3<u32>(0u, 0u, 1u)), vec4<bool>(false, false, true, true), Struct_2(Struct_1(vec3<u32>(326u, 1u, 118117u)))), Struct_3(Struct_1(vec3<u32>(67566u, 0u, 0u)), vec4<bool>(false, true, false, true), Struct_2(Struct_1(vec3<u32>(37599u, 17180u, 1u)))), Struct_3(Struct_1(vec3<u32>(0u, 34128u, 0u)), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec3<u32>(0u, 1u, 0u)))));

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~firstTrailingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(19097u);
}

